# Export and share your work

LiquidAmber provides different export actions for a single Discover answer, a complete discussion, a Verify review, and a Describe graphic. Choose the smallest output that contains the material your recipient needs.

## Choose an output

| Goal | Action | Output |
| --- | --- | --- |
| Reuse one Discover answer in another application | **Copy answer** | Clipboard text |
| Keep one Discover answer with Markdown formatting and references | **Download as Markdown** | `.md` file |
| Preserve an entire Discover conversation | **Export as PDF** from the discussion menu | `.pdf` file |
| Share an article's Verify review | **Export PDF** from the article review | `.pdf` file |
| Share the currently filtered Verify issues | **Export PDF** from **Issue Explorer** | `.pdf` file |
| Send accepted Verify follow-ups for manual resolution | **Export PDF** from **Follow-ups** | `.pdf` file |
| Move selected SEO terms into a CMS | **Copy** under **Selected keywords** | Clipboard text |
| Publish or continue editing a Describe graphic | **Export Diagram** | SVG, PNG, PDF, JSON, or Session JSON |

An exported file does not grant access to its source project, and granting project access does not automatically send an export.

## Copy one Discover answer

1. Find the action bar directly below the answer.
2. Select **Copy answer**.
3. Wait for **Answer copied to clipboard**.
4. Paste into the destination application.

The copied content is a cleaned representation of that answer. It removes interface-only markup and collects available source links into a readable references section.

## Download one answer as Markdown

1. Find the action bar below the answer.
2. Select **Download as Markdown**.
3. Open the downloaded `.md` file from the browser's download location.

The file contains the cleaned answer text, Markdown structure, and available reference links. It does not include the full discussion.

Use Markdown when the content will be edited, stored in a text-based system, or moved into a publishing workflow that understands Markdown.

## Export a Discover discussion as PDF

1. Find the discussion in the history panel.
2. Open **Discussion options** from its three-dot menu.
3. Select **Export as PDF**.
4. Wait for the success message before exporting it again.

The PDF represents the complete selected discussion rather than one answer. Its filename is derived from the discussion name and identifier, so renaming the discussion before export can make the file easier to recognize.

Use a discussion PDF for editorial review, research handoff, or an archival snapshot where the sequence of questions and answers matters.

## Export from Verify

Verify offers three PDF scopes for the selected article.

### Editorial review

Select **Export PDF** from the article review to create an editorial-review report for the current article. Use this for a broad review handoff.

### Issue Explorer

Set the agent, severity, verification-status, and resolution filters you need. Open **More actions** in **Issue Explorer**, then select **Export PDF**.

The exported issue report follows the active filters. Check **Showing _n_ of _total_** before exporting so you know which issues are included.

### Follow-ups

Open **Follow-ups** and select **Export PDF**. This report contains accepted issues that still require manual follow-up, making it suitable for a reporter, editor, or source-verification handoff.

### Keywords

Under **Selected keywords**, select **Copy** to move the chosen terms to a CMS or another editorial tool. This copies the selected set, not every reviewed keyword.

See the [Verify guide](verify.md) for the review workflow that produces these reports.

## Export from Describe

In the Describe graphics editor, select **Export diagram** to open **Export Diagram**. Enter a filename and choose a format:

| Format | Best use |
| --- | --- |
| **SVG** | Responsive vector artwork for web or design workflows |
| **PNG** | Raster artwork; choose 1x, 2x, or 3x scale for the required resolution |
| **PDF** | A fixed document version of the current graphic |
| **JSON** | The current infographic payload without editor history |
| **Session** | A `.json` file containing the prompt, context, current Vega JSON, theme, and history so editing can resume later |

The editor adds the appropriate extension automatically. Wait for **Exported as _FORMAT_** or **Saved session JSON**. If export fails, the editor displays an error instead of downloading a file.

Use **Session** when another editor needs to continue the work. Use SVG, PNG, or PDF for publication and review. See [Describe](describe.md) for chart creation and preview controls.

## Review before sharing

Before sending or publishing any export:

1. Reopen source links and confirm they support the claims beside them.
2. Check dates, names, figures, and publication attribution.
3. Remove private discussion context and personal data the recipient does not need.
4. Confirm that the recipient is allowed to receive the underlying information.
5. Follow the publisher's rights policy for article text, photographs, logos, and other source assets.
6. For graphics, check labels, contrast, source credit, and readability at the intended size.
7. Treat exports as snapshots. Later changes in LiquidAmber do not update files already downloaded.

Downloading an image or article reference does not itself grant permission to republish it.

## Resolve download problems

- Check the browser's download indicator and download folder.
- Allow downloads from the LiquidAmber site when prompted.
- Avoid selecting the export action repeatedly while its progress indicator is active.
- If **Export as PDF** fails, record the visible error and retry once after the page finishes loading.
- If **Download as Markdown** appears to do nothing, check the download folder before retrying because the action may not display an error.
- If a Describe export fails, confirm that the preview renders and the JSON validity indicator is clear before exporting again.

For additional symptom-based help, see [Troubleshoot Discover](discover-troubleshooting.md).
