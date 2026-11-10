# Normal vs Deep Search

This document explains how Normal and Deep Search work, where each can fall short, and why both are useful.

In the help and flavor picker, Normal is also called **Reporting Brief** or **Standard Research**, and Deep Search is called **Deep Archive Search**. See [Prompt subtypes and flavors](discover-prompt-options.md) for the available project options.

It would be convenient to describe Deep Search as the best all-around experience. The reality is more nuanced: the better choice depends on the question, the archive's search capabilities, and the quality of the information returned by the CMS.

**The main difference:** Normal reads full article content directly from search results. Deep Search first reviews titles and summaries, then retrieves the full articles selected as relevant. That extra selection step helps with broad research, but it can also miss useful material.

## CMS and outlet rules

### Search

Both modes depend on the underlying search engine. Neither can read an article that search never discovers.

For the integrations described here, the keyword-search rules are:

- **WordPress (default), BLOX, and NewsBank:** Multi-term keyword searches require all terms to match (AND). If any term is missing, the article is excluded.
- **WordPress Jetpack (Newspack):** Articles matching only some terms remain eligible, but rank below articles matching all terms.
- **PugenAI:** Semantic search can find related concepts even when the wording differs. For example, a search for "rising housing costs" could find an article about "rent increases" or "housing affordability." This improves discovery.
- **Atex DMDesk:** Search behavior still needs to be confirmed.

For example, searching for `city council priorities` may miss an article about a council budget vote if the word `priorities` never appears. Searching for `city council` is broader, but returns more material to review.

### Summaries

What we call a "summary" differs between CMS platforms and, within the same CMS, between outlets, depending on their publishing practices and procedures.

- **BLOX:** Depending on the outlet's publishing practices and procedures, the returned "summary" can be an excerpt, an actual summary, or a headline.
- **NewsBank:** Typically defaults to showing **the first 100 or so words of the article**.
- **WordPress Jetpack (Newspack):** A keyword-matching snippet from within the post, or a beginning excerpt when the match comes from a field such as the title or metadata.
- **Other integrations:** Not enough experience yet to characterize their summary quality.

This matters especially for Deep Search: **a relevant fact can be present in the full article but absent from the title and excerpt used to decide whether to read it.**

## Search mechanics

The following is a simplified description. Available tools, fallback options, and limits depend on the integration and configuration; these are not guaranteed steps for every request.

### Normal

Normal uses the following fallback sequence to find content for the answer:

1. **Try keywords that match the question.** Return the full text and identifier of every article found.
2. **If that fails, try more general keywords.** Again, return the full text and identifier of every article found.
3. **If that fails, use Google to find related keywords.** Search the archive with those keywords and return the full text and identifier of every article found.
4. **If that fails, use Google semantic search to find articles directly:**
   1. Retrieve up to **10 articles per search**, the limit set by the Google API.
   2. Keep the article identifiers.
   3. Read all articles found and retain their full text associated with their identifiers for future reference.

The third and fourth steps are distinct: step 3 uses Google to improve the archive query; step 4 uses Google to discover articles directly, then reads them.

For NewsBank, Google is restricted to keyword discovery; the direct article-discovery fallback in step 4 does not apply.

Normal avoids a separate summary-selection gate. However, reading full articles immediately consumes more context per result and can limit how much of a large archive is reviewed.

### Deep Search

Deep Search separates discovery from full-article reading:

1. Start with broader subject terms. For `city council priorities over the years`, a starting query might be `city council`, with a location and date range where appropriate.
2. Retrieve titles, summaries, and article identifiers rather than immediately loading every full article.
3. Classify candidates as relevant or not relevant using their titles and summaries. Parallel model workers can review batches.
4. Queue relevant articles. The runtime retrieves their full content with bounded parallelism, subject to context, budget, access, and execution limits.
5. Provide the accepted full-article evidence to the main model to write the answer.

The skills-based workflow also retains research progress for explicit continuation. Optional temporal sampling spreads discovery across date ranges instead of relying only on the newest results.

Worker counts are configuration details, not the defining difference between modes. Repository defaults are up to 10 concurrent classification workers and four concurrent article reads; deployed settings may differ.

Deep Search may stop before reading all selected articles if context or budget limits are reached.

For practical guidance on research and continuation, see the [Deep Archive Search journalist guide](discover-local-two-step-journalist-guide.md).

## Shortcomings

The examples below illustrate possible failure modes, not measured comparisons between the two modes.

### Where Deep Search can fall short

#### 1. The important detail is missing from the excerpt

**Question:** "Did the council discuss closing the public pool?"

An article is titled "Council approves annual budget." Its opening excerpt discusses taxes and road repairs; the pool discussion appears near the end. Deep Search may reject it because the title and excerpt do not reveal its relevance.

If that article appears in Normal's search results, Normal can see the pool discussion in the full text without first passing a summary-selection gate.

#### 2. A broad query produces too much unrelated coverage

**Question:** "How did the council's position on the waterfront project change?"

A search for `city council` may return many articles about policing, schools, and routine meetings. Reviewing those candidates consumes time and budget before the system reaches the waterfront coverage.

A focused query containing the project's name may be more effective in either mode.

#### 3. Poor summaries make relevance decisions unreliable

**Question:** "What concerns did residents raise about the new development?"

Several articles have generic titles such as "A town divided" and excerpts that only describe the meeting atmosphere. The substantive concerns appear later in the articles.

Deep Search has little information on which to base its selection. A better classifier cannot reliably recover details that are absent from its input.

#### 4. Broad discovery still does not mean complete coverage

**Question:** "How have housing policies changed over 20 years?"

Temporal sampling can improve the historical spread of results, but a busy period may still contain more articles than the search retrieves or the system can read. Relevant articles may remain undiscovered or pending.

A completed queue means the selected work was processed, not that the whole archive was exhaustively searched.

### Where Normal can fall short

#### 1. The question's wording is too restrictive

**Question:** "What were the city council's environmental priorities?"

A literal keyword search may miss an article about a wastewater investment because it never uses the words `environmental priorities`.

Broader searches can help, but this depends on query reformulation. Deep Search's subject-first approach may discover more candidates; it does not eliminate the underlying keyword limitation.

#### 2. Full articles fill the available context too early

**Question:** "How has the city handled flooding over the past 15 years?"

The first results contain long, recent articles. Reading them directly can consume the available context before older coverage is reached.

Deep Search can review more compact summaries before choosing which full articles to read, and temporal sampling can improve the spread across years.

#### 3. Useful evidence is scattered across many articles

**Question:** "How did the hospital expansion evolve from proposal to opening?"

The answer may require early planning coverage, funding decisions, neighborhood objections, construction updates, and the opening report. A few immediately retrieved articles may show only part of that sequence.

Deep Search's selection queue and retained research progress are better suited to progressively assembling that broader evidence base.

#### 4. Google cannot recover everything missing from archive search

**Question:** "What did the paper report about this dispute in 2008?"

The relevant article may be absent from Google's index, inaccessible to its crawler, or published under an old URL. A Google fallback may therefore find nothing useful even though the archive contains the article.

This is a discovery limitation, not evidence that the event was never covered. Deep Search can also encounter archive indexing and access limitations.

## Choosing a mode

- **A focused question about a named person, event, or article:** Start with Normal; direct full-text reading may be sufficient.
- **A broad question spanning many articles or years:** Start with Deep Search; summary review, temporal sampling, and progressive research can help.
- **Important details buried beyond weak excerpts:** Normal may avoid false rejections at the summary stage, provided search returns those articles.
- **Informative titles and summaries across a large archive:** Deep Search can use those signals to select full articles more effectively.
- **A timeline or investigation extended through follow-ups:** Deep Search's retained queue and evidence support continuation.

These are starting points, not guarantees. A focused question can still require deep research, and a broad question can sometimes be answered from a few strong articles.

## Conclusion

We need both modes because they make different trade-offs:

- **Normal prioritizes direct access to full content.** It avoids rejecting articles based on incomplete summaries, but can spend its context on a narrow set of results.
- **Deep Search prioritizes broader discovery and selective reading.** It supports research across more candidates and follow-ups, but depends on the quality of titles and summaries and can require more processing.

Deep Search is not simply "Normal, but better," and Normal is not simply "Deep Search with less reasoning." They are different retrieval workflows. Asking for a shorter answer, a narrative, or an obituary is a separate presentation preference.

The best choice depends on the outlet, the CMS, and the question. Users should understand whether their archive requires exact keywords, what its summaries actually contain, and what coverage the system completed.

**The goal is not to promise that one mode always wins. It is to help users choose an appropriate starting point and recognize when the evidence is incomplete.**
