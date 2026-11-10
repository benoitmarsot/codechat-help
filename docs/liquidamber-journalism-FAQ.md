# Newsroom FAQ

## What is LiquidAmber?

LiquidAmber is an AI research and editorial-support workspace for journalists, editors, and publishing teams. It helps a newsroom find reporting, organize source material, trace evidence, and develop coverage without losing sight of the underlying articles and records.

## Is my data or content used to train AI?

No. LiquidAmber does not train its models on customer conversations or archives and has commercial agreements with Google, OpenAI and Anthropic, which - unlike consumer models - disallow using customer content to train their models. 

When a user asks a question, we retrieve information relevant to that question and provide it to the model  as context for that particular request, but only to formulate a response. The models do not have unrestricted access to publisher content at any time.

For a detailed explanation of training, context, archive retrieval, and memory, see [How LiquidAmber Handles Your Intellectual Property](intellectual-property.md).

## What can a reporter ask LiquidAmber?

Ask in plain language. For example:

- What has our newsroom reported about this development?
- Build a timeline of the county's budget decisions.
- Find prior reporting on this company, its executives, and local impact.
- What facts are verified, and what still needs reporting?
- Summarize the latest coverage with links to the original articles.

LiquidAmber can help turn a broad reporting question into a searchable set of articles, sources, dates, people, and follow-up angles.

## Does LiquidAmber write a story for me?

When the outlet permits drafting, Discover can help develop or refine a story,
obituary, profile, explainer, or other editorial draft from sourced material.
Drafting availability depends on the outlet's content permissions, not just
whether you select **Reporting Brief** or **Story Mode**.

For Discover Skills workflows:

- If **Block writing publishable content** is enabled, a request for an article,
  lede, or other publishable copy receives a brief explanation and a reporting
  brief instead. Research, summaries, timelines, and other permitted reporting
  assistance remain available.
- If **Block verbatim article quotes in generated editorial content** is enabled,
  generated editorial content must paraphrase supported information with
  citations rather than reuse article quotations. Source titles and citation
  metadata remain available.

Changing flavors or requesting a rewrite does not override these restrictions.
Ask your outlet administrator about the active policy; see
[Discover content permissions](admin-outlets.md#configure-discover-content-permissions).
These controls do not change legacy Discover prompts.

LiquidAmber supports journalists rather than replacing them. Generated material
still requires reporting, verification, attribution, fairness checks, and
editorial judgment. Reporters and editors remain responsible for the final work.

## How does LiquidAmber support source-grounded reporting?

LiquidAmber is designed to return the material behind an answer, including article links, publication dates, authors, and other available references. Use those sources to inspect the original reporting before relying on a factual claim.

## How does LiquidAmber support CMS and editorial content systems?

LiquidAmber is designed to support newsroom CMS and content workflows, so research, archive retrieval, and editorial context can stay connected to the systems a publication already uses. Supported integrations include **Naviga**, **BLOX**, **The Guardian**, and more. Available sources depend on the project's configuration. NewsBank can be connected alongside a CMS archive.

## Can I search by date?

Yes. LiquidAmber can interpret requests such as "last week," "between March and June," or "during the 2025 legislative session." It transforms the requested period into a specific start and end date range, then uses that range to filter the query.

## How does LiquidAmber handle a broad archive question?

For a timeline, backgrounder, or other wide-ranging question, LiquidAmber can use **Deep Archive Search**:

1. Scan article summaries across a broad result set.
2. Review summaries for relevance and queue selected articles.
3. Retrieve their full text. Runtime-managed Skills workflows support bounded
   parallel retrieval; scheduling depends on the project's configuration.
4. Produce an answer from the full evidence accepted into context, with sources,
   remaining uncertainties, and a Coverage Note.

This supports broader discovery, not a guarantee of exhaustive coverage. The
Coverage Note distinguishes summaries scanned, full articles read, and remaining
work. Supported workflows retain research progress for explicit continuation.
See the [Deep Archive Search guide](discover-local-two-step-journalist-guide.md).

## What should I do when an answer has gaps?

Treat gaps as reporting work. Check the linked source material, seek primary records, contact the relevant people, and ask a narrower follow-up question. LiquidAmber can help surface what has been found, but it should not fill missing evidence with speculation.

## Can a newsroom organize research by story or investigation?

Yes. LiquidAmber supports project-based work so a story, beat, investigation, or series can keep its own resources, discussions, assistants, and access boundaries. This helps the reporting team return to a body of work without rebuilding its context.

## Is newsroom data separated by project?

LiquidAmber supports project-scoped knowledge for work that should remain within a specific story or team. It can also support broader profile-wide knowledge where the newsroom intends to share context across projects. Choose the scope that matches the editorial and access needs of the work. See [Projects and collaboration](discover-projects.md) for project setup and access details.

## What is LiquidAmber memory?

Memory lets LiquidAmber retain useful context between conversations, such as a reporter's stated preferences or the meaning of a term within a specific investigation. It is intended to reduce repeated setup while keeping the context understandable and controllable. See [Use personal memory](personal-memory.md) for instructions on creating, managing, and using memories.

LiquidAmber has two memory scopes:

- **Personal memory:** Context that belongs to an individual user and can be useful across their work.
- **Project memory:** Context that applies only to the current story, beat, investigation, or editorial project.

For example, a reporter may keep a preferred reporting format in personal memory, while a project memory can record that "the bay" means Chesapeake Bay for one investigation. Memory can be reviewed, updated, or removed when it is no longer accurate.

## What should I store in memory?

Store stable context that improves future work, such as a preferred output format, an agreed project definition, a recurring source category, terminology specific to an investigation, source records, or notes. You can also ask the LiquidAmber agent to create a memory from useful context in an answer. Review memories for accuracy and apply editorial verification before relying on them.

## What is the best way to use LiquidAmber responsibly?

Use it to accelerate discovery and organize evidence, then apply standard journalism practices: read the sources, verify claims, preserve attribution, seek response, distinguish fact from analysis, and keep editorial judgment with the newsroom.