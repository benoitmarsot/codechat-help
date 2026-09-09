# Describe

## Overview

LiquidAmber Describe turns research findings into branded charts and graphics that publishers can use to explain complex topics more clearly. You describe what you want in plain language, Describe generates a chart, and you can keep refining it — by prompt or by editing the underlying spec directly — until it's ready to publish.

![Describe chart creator,main screen](images/describe/main-screen.png)
*Screenshot placeholder — Prompt tab and history panel.*


## What it does

- Converts data and research results gathered during a project into visual charts and graphics.
- Generates a chart from a natural-language prompt, and lets you keep refining it with follow-up prompts.
- Can be launched directly from a Discover or Verify discussion as a follow-up action, carrying over the conversation's data as a starting point.
- Exposes the underlying chart spec (Vega-Lite JSON) for direct editing, with a diff summary of what changed.
- Lets you preview the chart under several branded themes before exporting.
- Keeps a version history so you can save a version, review prior steps, or reset.
- Helps publishers communicate complex topics to readers through visual explanation rather than text alone.

## Creating a chart

![Describe chart creator, Prompt tab, numbered 1 through 4](images/describe/prompt.png)

*Screenshot placeholder — Prompt tab and history panel.*

1. **Prompt** — describe what you want the chart to show, or what should change in the current chart (e.g. "switch to bar chart", "emphasize 2026 values", "simplify labels").
2. **Draw** — generates or updates the chart from your prompt.
3. **Change summary** — after each draw, Describe explains what it did and shows how much of the spec was touched (for example, "Added: 34" fields, "Modified: 1").
4. **History** - Every prompt is logged as a step (for example, "Conversation · Step 1") with its own timestamp and description, so you can see how the chart evolved. You can always undo or redo a step, or click on a step to see the associated graphic, so your past work is never lost.

## Editing the chart spec directly

![JSON Source tab showing the Vega-Lite chart spec](images/describe/json-source.png)

*Screenshot placeholder — JSON Source tab.*

1. **JSON Source tab** — switches from the Prompt view to the raw chart spec, split into `infographic_meta` (eyebrow tag, headline, subtitle, source credit, brand theme) and `chart_spec` (the Vega-Lite specification and its data values).
2. **Validity indicator** — shows whether the current JSON is valid, along with its line and character count.
3. **Editor tools** — format/clean up the JSON, verify it, and copy it to your clipboard.
4. **Save version / Reset** — save the current spec as a new version, or reset to discard your edits.

## Previewing and theming

![Preview tab with theme selector open, showing Minimal Dark, Editorial Light, Financial Print, and Warm Amber](images/describe/preview-themes.png)
*Screenshot placeholder — Preview tab with the theme dropdown open.*

1. **Preview tab** — shows the chart as it will appear to readers, with its eyebrow tag, headline, subtitle, and source credit.
2. **Theme selector** — switch the chart's branding between themes such as Minimal Dark (default), Editorial Light, Financial Print, and Warm Amber.
3. **Labels toggle** — show or hide data labels on the chart.
4. **Zoom controls** — zoom the preview in or out, or expand it to fullscreen.
5. **Undo / redo, download, and save** — step back or forward through changes, download the chart, or save it as a file; a theme toggle in the same toolbar switches the editor itself between light and dark mode.

## Starting from a conversation

Describe is launched as a follow-up action from a Discover or Verify discussion — for example, a "Draw" suggested action after a research answer. When it is, the chart starts from the data already surfaced in that conversation. Context contain the discussion that was use for the graphic.

![Context Data dialog showing the source discussion and project used to seed the chart](images/describe/context.png)
*Screenshot placeholder — Context Data dialog.*

## Recover from generation or rendering problems

### The prompt does not produce the intended chart

Make the next prompt describe the structure as well as the subject. Include:

- the chart type, such as bar, line, timeline, or scatter plot;
- the field that belongs on each axis;
- the measure to compare;
- the date or category order;
- labels or annotations that must remain visible; and
- what should be removed from the current version.

Use the change summary and preview after each generation. When a revision moves in the wrong direction, use undo or select an earlier history step instead of layering contradictory prompts onto it.

### JSON is invalid

Open **JSON Source** and check the validity indicator. When it shows **Invalid JSON**:

1. Read the error shown below the editor. Syntax errors include a line and column when available.
2. Use **Format JSON** to expose mismatched braces, commas, or quotation marks.
3. Use **Validate JSON** after correcting the error.
4. Confirm that the document contains the complete infographic payload, including `infographic_meta` and `chart_spec`, rather than only a standalone Vega-Lite fragment.

The preview can render only supported infographic JSON. Loading an arbitrary JSON document produces **Unsupported JSON**.

### JSON is valid but the chart does not render

Read the validation or chart-render message in the preview. Check that:

- `chart_spec.$schema` references Vega-Lite version 5 or 6;
- the data fields named by encodings exist in the data values;
- mark and encoding types are valid Vega-Lite values; and
- the current source contains no unsupported color or schema values reported by the validator.

Return to the last working history entry when the failure followed a recent edit. Use **Reset** only when you intend to clear the current editable source and begin again.

### Labels or layout are difficult to read

Use the labels toggle, zoom controls, fullscreen preview, and theme selector to inspect the output. If labels still collide, ask Describe to shorten labels, change orientation, reduce the number of categories, or move detail into the subtitle or source note.

Check the graphic at its intended publication size, not only in the enlarged editor preview.

## Save or export a graphic

**Save version** adds the current source to the editor's history. It does not download a file.

Use **Export diagram** when you need a file:

- **SVG** for responsive vector output;
- **PNG** at 1x, 2x, or 3x scale;
- **PDF** for a fixed document version;
- **JSON** for the current infographic payload; or
- **Session** for a JSON file containing the prompt, context, current source, theme, and history so the work can be resumed.

If export fails, first confirm that the preview renders and the JSON is valid. See [Export and share your work](export-and-share.md#export-from-describe) for format selection and publication checks.


