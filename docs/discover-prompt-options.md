# Prompt subtypes and flavors

Use this guide when choosing **Prompt subtype** and **Prompt flavor** in Project Setup. The subtype chooses the reporting context; the flavor chooses the search workflow and default answer style.

The names below match the flavor picker. **Deep Archive Search** and **Deep Archive Search NewsBank** are the Deep Search modes: they review summaries first, then read relevant full articles.

## Quick chooser

| Your research need | Prompt subtype | Prompt flavor |
| --- | --- | --- |
| A focused question about your outlet's coverage | `local` | `normal` |
| A timeline, backgrounder, or broad sweep of your outlet's archive | `local` | **Deep Archive Search** |
| A focused question using the configured NewsBank archive | `local` | `newsbank` |
| A broader archive sweep using the NewsBank Deep Search connection | `local` | **Deep Archive Search NewsBank** |
| Local research with a direct-answer or timeline-first presentation | `local` | `classic` |
| International research with a reporting-brief presentation | `international` | `normal` |
| International research with a direct-answer or timeline-first presentation | `international` | `classic` |

Only use combinations available to your account and supported by the project's connected sources. A flavor appearing in the list does not mean its source connection is ready.

## What the three prompt fields mean

| Field | What it selects | For Discover |
| --- | --- | --- |
| **Prompt type** | The assistant's product or purpose | `discover` |
| **Prompt subtype** | The coverage context and primary source family | `local` or `international` |
| **Prompt flavor** | A workflow or presentation variant within that context | The options described below |

**Local** prioritizes the configured publication and its local coverage area. Outlet variables supply publication names, geography, archive dates, profiles, and examples.

**International** prioritizes The Guardian's coverage, including UK, US, Australia, and international reporting. It is not a search across every local outlet or a NewsBank mode.

The same flavor name can mean different source connections under different subtypes. For example, `local / normal` uses your publication's connected CMS archive, while `international / normal` uses The Guardian.

NewsBank can be connected alongside your publication's CMS. Choose a NewsBank flavor when you want to research that archive; the available sources depend on your project's configuration.

## Local flavors

### `normal`: standard search

Choose this for focused questions, recent developments, or a small set of related stories.

- Searches your publication's connected CMS archive.
- Starts with a batch of 20 full-content results and can page through more coverage.
- Defaults to a reporting brief: verified facts, supporting sources, uncertainties, people to contact, records to obtain, and possible angles.
- Can use Google when local coverage remains absent or incomplete, or when you ask for broader context.

Example: "What did the county council decide about the school budget this month?"

### Deep Archive Search: Deep Search

Choose this for timelines, backgrounders, and questions where an older article could materially change the answer.

- Scans compact summaries from your publication's connected archive.
- Identifies relevant articles, then reads their full text individually.
- Builds factual claims from retrieved full articles, not just discovery summaries.
- Keeps the reporting-brief presentation used by `normal`.
- Reports summaries scanned, relevant candidates, and full articles fetched in the **Coverage Note**.

Deep Search can review more candidates before loading full text, but may take more retrieval calls. It does not guarantee an exhaustive archive search or a fixed number of results.

Example: "Trace the school budget debate over the past three years, including major votes and unresolved disputes."

See the [Deep Archive Search guide](discover-local-two-step-journalist-guide.md) for retrieval, continuation, and illustrated comparisons.

### `newsbank`: standard NewsBank search

Choose this for a focused question that should be answered from the configured NewsBank archive.

- Searches the configured NewsBank archive.
- Starts with up to 20 documents per batch and can continue through additional pages.
- Uses the reporting-brief presentation.
- Supports answers from retrieved NewsBank articles only.

Google may help discover better search keywords, but its facts, links, and images are not used as reporting evidence in this mode.

Example: "What does the configured NewsBank archive report about the downtown redevelopment proposal?"

### Deep Archive Search NewsBank: Deep Search

Choose this for a broad archive question when the NewsBank summary and public-article connection is configured.

- Scans summaries from the configured NewsBank archive.
- Reads relevant full articles one at a time.
- Uses the same summary-first Deep Search approach and reporting-brief presentation as **Deep Archive Search**.
- Keeps the NewsBank-only evidence rule: Google is for keyword discovery, not an alternative reporting source.

Do not assume this connection has exactly the same coverage or access as standard `newsbank` search. Confirm the available archive and article retrieval with your administrator.

### `classic`: direct-answer presentation

Choose this when you prefer a direct answer followed by explanatory sections or a chronological timeline.

For local projects, `classic` searches the same connected CMS archive as `normal`; it is not Deep Search. The main distinction is the default answer structure:

- **Classic:** direct answer, key facts, background or timeline, current status, and remaining uncertainties.
- **Normal:** a reporting brief emphasizing evidence and next reporting steps, or the output format you request, such as a lede or story draft.

Neither flavor replaces a reporter's verification, fairness checks, or editorial judgment.

## International flavors

Both `international / normal` and `international / classic` connect to The Guardian and Google. They prioritize Guardian reporting and can use external reporting when Guardian evidence remains absent or incomplete, or when you request broader context.

- **`normal`** defaults to a reporting brief and follows requests for article drafts, ledes, nut grafs, or other newsroom formats.
- **`classic`** defaults to a direct answer with explanatory sections or a timeline.

Neither international option uses the local summary-first Deep Search tools. NewsBank and Deep Archive flavors are local configurations.

## Connected tools and configuration

MCP connections give the assistant access to sources and tools. A prompt flavor supplies instructions; it does not by itself create source access.

| Subtype and flavor | Primary research source and workflow | Other connected features |
| --- | --- | --- |
| `local / normal` | Publication's CMS archive; standard search | Google, LiquidAmber help, personal memory |
| `local / classic` | Publication's CMS archive; standard search | Google, LiquidAmber help, personal memory |
| Local / **Deep Archive Search** | Publication's CMS archive; summaries followed by full articles | Google, LiquidAmber help, personal memory |
| `local / newsbank` | NewsBank archive; standard search | Google for keywords only, LiquidAmber help, personal memory |
| Local / **Deep Archive Search NewsBank** | NewsBank archive; summaries followed by full articles | Google for keywords only, LiquidAmber help, personal memory |
| `international / normal` | The Guardian | Google, LiquidAmber help, personal memory |
| `international / classic` | The Guardian | Google, LiquidAmber help, personal memory |

Deep Search needs a connection that supports both summary discovery and full-article reading. Your administrator can confirm whether the integration supports the selected mode.

### Before creating the project

1. Choose **Prompt type** `discover`, then the subtype and flavor appropriate to the source and research task.
2. Confirm that the outlet variables match the publication, coverage area, and required source profile.
3. Review the supplied **MCP payload** with your administrator if you manage source configuration. Do not paste credentials into questions or replace a working payload with guessed JSON.
4. For CMS archive projects, confirm the outlet connection. Deep Search needs working summary search and full-article access.
5. For NewsBank projects, confirm access to the intended NewsBank archive and support for the selected standard or Deep Search mode.
6. For international projects, confirm Guardian access.

See [Project Setup](discover-projects.md#create-a-project) and [outlet configuration](admin-outlets.md#configure-an-outlet). Model and source controls may be fixed by your role or outlet.

## Read the results, not just the mode name

Check the **Coverage Note** for the actual dates and volume reviewed. In Deep Search, summaries scanned, full articles fetched, and references cited are different counts: a scanned summary is not automatically a verified source.

If retrieval stops early, the answer should identify remaining coverage and offer continuation. If a source or tool is unavailable, ask an administrator to check the connection rather than assuming that a different label will restore access.

Use [Evidence & Response Tools](discover-research-trails.md) to inspect references and the search trail.
