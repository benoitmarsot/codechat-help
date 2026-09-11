# Troubleshoot Discover

Use this guide when you cannot reach a project, start a discussion, find expected archive material, complete an answer, or export your work. Begin with the symptom you can see and make one change at a time.

## You cannot sign in

1. Confirm that you are using the account email and current password.
2. Select **Forgot password?** when you do not know the password.
3. If the account is pending, ask an administrator to resend the invitation.
4. If the account is inactive or disabled, ask an administrator to activate it.

See [Profile, password, and account access](account-and-password.md) for password requirements and the complete recovery flow.

## A project is missing

1. Clear **Filter by name** and **Filter by user** on the Projects page.
2. Check whether **No projects match the current filters** changes back to the project list.
3. Sign out and back in if an administrator recently changed your role or access.
4. Ask the project owner to open **Project Details > User Access** and confirm that your account is listed.
5. Ask an administrator to confirm that the project and your role are scoped to the intended outlet or organization.

Project membership and account roles are separate. Access to an outlet does not automatically add every project in that outlet to your list. See [Projects and collaboration](discover-projects.md#share-a-project).

## You cannot start or continue a discussion

When a project is read-only for your account, **New Discussion** is disabled and the conversation page says **You have read-only access to this project**. You can review existing work but cannot submit a new question.

Ask the project owner to grant you project access or ask an administrator to review your role. If the project itself cannot be found, return to the Projects page and follow the missing-project steps above.

## A search returns no or very little useful material

1. Confirm that the question belongs to the selected project and outlet.
2. Start a fresh discussion if the current thread began with another topic.
3. Name the person, place, organization, event, or policy directly.
4. Add a date range when time matters.
5. State the output you need, such as a timeline, source list, or comparison.
6. Remove unnecessary constraints when the first query is too narrow.
7. Try terminology that may have appeared in the publication at the time.
8. Ask Discover whether it can find coverage for the topic and period before assuming the archive contains it.

Compare the examples in [Getting Started with Discover](discover-getting-started.md#1-how-to-write-effective-queries). For broad historical research in a project configured for **Deep Archive Search**, see the [Deep Archive Search](discover-local-two-step-journalist-guide.md).

## A known article is missing

Check the expected article outside Discover first, then refine the query with facts that uniquely identify it:

- exact or approximate publication date;
- headline wording or a distinctive phrase;
- names and organizations in the article;
- section, beat, or location; and
- terminology used at the time rather than current terminology.

Older digitized material can have incomplete metadata or text-recognition errors. A missing result does not prove that the publication never covered the subject. If the article remains absent, record its URL or archive identifier and ask the outlet administrator to check source coverage and configuration.

## Results belong to the wrong topic

Discover uses earlier messages in the same discussion as context. If a new question is unrelated to that thread, start a new discussion and ask it again there.

Do not try to repair a mixed thread by repeatedly adding instructions to ignore earlier messages. Keep the original discussion for its original topic and use a clean thread for the new subject.

## An answer is slow, interrupted, or incomplete

- When the progress trail says **The LLM request timed out - retrying**, allow the automatic retry to finish.
- When a long-running request is no longer useful, select its cancel control and wait for the stream to stop before submitting another question.
- If Discover reports **Error while answering** or **Error finalizing answer**, do not treat partial text as a completed answer.
- Submit the question again after the error clears. Narrow a very broad request into smaller date ranges, entities, or stages when it fails repeatedly.
- There is no resume control for a failed partial answer. Preserve any useful text separately before retrying if needed.

Avoid sending the same question repeatedly while the first request is still active.

## A citation does not support the answer

1. Open **Evidence & Sources**.
2. Read the source linked beside the disputed claim.
3. Compare the claim with the source's date, publication, and wording.
4. Review **Search trail** to understand how Discover searched.
5. Review **Reviewed articles** to see the broader material considered.
6. Ask a focused follow-up that requests the exact evidence for the claim.
7. Use **Poor answer**, then select **Why?** and describe the unsupported or missing evidence.

Do not rely on an uncited claim as verified fact. See [Research Trails & Response Tools](discover-research-trails.md#clear-research-trails) for the complete evidence review.

## Copy or download does not produce a file

1. Check the browser's download indicator and configured download folder.
2. Allow downloads for the LiquidAmber site if the browser blocked them.
3. For **Export as PDF**, make sure a discussion is selected and wait for the success or failure message.
4. For **Download as Markdown**, check the download folder after selecting the icon; this action may not show an in-app failure message.
5. Try the export once more after the current answer or review has finished loading.

See [Export and share your work](export-and-share.md) to confirm that you selected the action matching the content and format you need.

## A role change is not visible

Navigation permissions are loaded when you authenticate. Sign out and back in after an administrator changes your role or scope.

If the action remains unavailable, ask the administrator to check both:

- the account's platform, organization, or outlet assignment; and
- membership in the specific project.

## Report a problem

Before escalating a repeatable problem, collect:

- affected product and page;
- organization, outlet, project, and discussion name;
- approximate date and time;
- the question or action that triggered the problem;
- exact visible error text;
- whether retrying in a fresh discussion changed the result; and
- expected source URL or article identifier when coverage is missing.

Do not include passwords, reset tokens, API credentials, private keys, or confidential source material. Follow your organization's established support route described on the [Contact page](contact.md#help-with-an-existing-account).
