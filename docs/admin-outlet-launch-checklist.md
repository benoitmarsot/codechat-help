# Launch a new outlet

Use this checklist to take an outlet from initial organization setup to a tested Discover workspace and a prepared Engage domain policy. It links the individual administration tasks into one launch sequence.

This workflow is intended for platform and organization administrators. The controls available to you depend on your access scope and permissions.

## 1. Collect setup information

Gather the following before creating records:

- organization name;
- outlet name and public-facing publication name;
- shared connection `profile_name`, as configured for each archive provider the outlet uses;
- public site URL;
- CMS API URL, when authenticated CMS lookups are required;
- deployment-managed environment variable references for the CMS key and secret;
- earliest reliable primary CMS archive date and, when used, the independent NewsBank archive date;
- coverage geography and communities for `coverage_area_description`;
- authorized NewsBank source names, when actual source filtering is required (not an outlet prompt variable);
- verified local-news category paths, IDs, or slugs for the selected CMS, when local filtering is needed;
- the outlet's policy on generating publishable copy and reusing verbatim article quotes;
- approved development, staging, preview, and production domains for Engage;
- the voice transport, speech output, and provider setup when Engage Voice is part of the launch;
- initial administrator and user names, email addresses, and roles; and
- several questions whose answers and source articles are already known.

Do not place literal CMS credentials in planning documents, email, or this checklist. Obtain approved environment variable references from the deployment administrator.

## 2. Create the organization and outlet

1. Open **Admin > Outlets**.
2. Enter **Organization Name**, then select **Create organization**.
3. Confirm the new organization is selected.
4. Enter **Outlet Name**, then select **Create outlet**.
5. Find the outlet under **Visible Outlets** and select it.

Use the organization's established legal or operational name and the outlet's stable internal name. Avoid creating a second record to correct spelling; ask a platform administrator for help when an existing record must be corrected.

See [Create or select an outlet](admin-outlets.md#create-or-select-an-outlet) for the full procedure and deletion constraints.

## 3. Complete outlet prompt variables

The outlet-variable section is provider-neutral. **Discover + Engage / Local** is one shared editor; saving once updates both workflows.

1. Open the **Discover + Engage / Local** editor.
2. Enter the exact connection profile supplied by your deployment administrator in **Profile Name** (`profile_name`), regardless of provider.
3. Enter the publication's public name in **Publication Name** (`publication_name`). It also supplies publisher text and citation labels.
4. Enter the primary CMS archive start in **Coverage Start Date** (`coverage_start_date`) as `YYYY-MM-DD`.
5. When using NewsBank, enter its archive start separately in **NewsBank Coverage Start Date** (`newsbank_coverage_start_date`). A valid date is required for NewsBank workflows and need not match the primary CMS date.
6. Describe the outlet's geography and communities in **Coverage Area Description** (`coverage_area_description`). This is also the default local query scope.
7. Select **Save variables** once. Both local workflows receive the shared values; each provider's prompts use its own archive start date.

Do not collect or configure local search entities, example headlines or dates, publication aliases, an abbreviation, or a local-impact phrase. Search and citation examples are shared fictional text, and local-impact wording is shared. NewsBank source-filter syntax is illustrated directly in its prompt; real filters must use authorized source names.

When legacy local values conflict, Discover takes precedence; Engage supplies values missing from Discover. Review the merged values and save once to synchronize both workflows. If multiple CMS providers are used, their authorized configurations must use the same profile name. Reload the outlet configuration and confirm the saved values before continuing. If deprecated fields or separate local editors still appear, ask the deployment administrator to deploy the update and apply the outlet-variable migration before proceeding.

See [Complete prompt variables](admin-outlets.md#complete-prompt-variables) for field guidance.

### Set content permissions

1. Open **Content Permissions - Discover**.
2. Enable **Block writing publishable content** if the outlet wants reporting
   assistance rather than generated articles, ledes, or other publishable copy.
3. When drafting is allowed, decide whether to enable **Block verbatim article
   quotes in generated editorial content**.
4. Select **Save permissions**.

Both settings default to OFF. They apply to Discover Skills answers and also
supply publisher restrictions to Engage Voice; they do not change legacy
Discover prompts or text Engage. Selecting Story Mode does not override them.
See [Configure Discover content permissions](admin-outlets.md#configure-discover-content-permissions).

## 4. Configure the CMS connection

Section labels and fields depend on the selected CMS integration. The connection
card supports BLOX, public WordPress, and WordPress with Jetpack Search; NewsBank
access is configured separately by the deployment administrator.

1. Confirm the connection profile matches the intended outlet profile.
2. Enter the outlet homepage in **Site URL**.
3. For BLOX authenticated lookups, enter **CMS API URL** and approved environment variable references in **CMS key** and **CMS secret**. Set **Publication section** when searches must stay within one publication.
4. For Jetpack, enter the numeric **Jetpack site ID**. Public WordPress needs no credentials.
5. Enter **Local news categories (JSON array)** using verified BLOX category paths, WordPress numeric category IDs, or Jetpack category slugs. Leave `[]` when the local filter is not configured.
6. Select **Save MCP config**.
7. Confirm the section reports **Configured**.

Stored credential values are hidden. Leave those fields blank on later edits to preserve the saved values.

Local-news categories replace the former boolean switch. They are used only when
the assistant explicitly requests local-news filtering; they do not automatically
filter every search. Requesting the filter with an empty category list produces
an error rather than an unrestricted search.

**Configured** confirms that the profile has a saved configuration. It does not prove that the CMS endpoint, credential references, archive data, and search behavior are all correct. Complete the test questions in step 7 before launch.

See [Configure the CMS connection](admin-outlets.md#configure-the-cms-connection) for the field reference.

## 5. Add initial users and projects

Plan access from broadest responsibility to narrowest need:

1. Add the outlet administrator who will manage users and projects for this outlet.
2. Add outlet viewers when someone needs read-only outlet access.
3. Invite reporters, editors, or researchers as **Outlet User**.
4. For an Outlet User, enable **Create project** when the person should receive a starter project during provisioning.
5. Use **Invite user** for normal onboarding, then confirm the account appears as **Pending**.
6. Ask each invited user to activate the account and confirm it becomes **Active**.

Follow [Onboard a new user](admin-user-onboarding.md) for invitation settings, activation, project access, and the first research session. Use [Manage users](admin-users.md) for role selection, direct account creation, CSV import, and account status. Use [Projects and collaboration](discover-projects.md) when a project owner needs to create another workspace or share one with additional users.

## 6. Prepare Engage domain security

Complete this step even when Engage will launch later, so the intended domain policy is recorded.

1. In **Engage Security**, review the domain suggestions derived from **Site URL**.
2. Add every approved host, including staging or preview hosts that must run Engage.
3. Use both the base domain and wildcard subdomain form when both are required.
4. Select **Save Engage settings** with enforcement still off.
5. Ask the publisher's deployment team to test Engage from every approved environment.
6. Enable **Enforce allowed domains** only after those tests pass.
7. Save again, then verify an approved origin succeeds and an unapproved origin is rejected.

Do not use a wildcard broader than the publisher-controlled domain. Review the allowlist whenever a site, preview platform, or canonical hostname changes.

See [Configure Engage security](admin-outlets.md#configure-engage-security) for accepted domain formatting and enforcement behavior.

### Prepare Engage Voice when included in the launch

1. Ask the deployment administrator to confirm current voice schema and published
   skills, an authorized archive Skills workflow on the Engage project, and the
   provider credentials required for the selected transport and speech output.
   LiveKit also needs its deployed voice agent.
2. Choose **Voice transport** and, for LiveKit, **Speech output**. Select
   **Voice model** for realtime speech, or confirm the project's text responder
   for browser or Inworld speech.
3. Have the publisher add `data-voice="true"` to the existing Engage element on
   an approved HTTPS page. Add `data-article-id` when current-story questions
   need an authorized archive article identifier.
4. Enable **Engage voice** and select **Save Engage settings**.
5. Confirm that a reader can allow microphone access, hear a source-grounded
   answer, inspect **Show sources**, and still open the text Engage panel.
   Browser speech also requires an installed local voice on the reader's device.
6. Open **Voice analytics** for the selected outlet and confirm recorded activity
   appears. Review failures and missing playback measurements before handoff.

If voice is not part of this launch, leave it OFF. See
[Enable Engage voice](admin-outlets.md#enable-engage-voice) for the available
configurations and [Review voice analytics](admin-outlets.md#review-voice-analytics)
for interpreting the report.

## 7. Validate Discover with known questions

Use a newly created outlet project and a fresh discussion for each independent test.

1. Ask a narrow question about a known recent article.
2. Confirm the answer identifies the correct publication and links to the expected source.
3. Open **Evidence & Sources** and inspect **References**, **Search trail**, and **Reviewed articles**.
4. Ask a question near the beginning of the configured archive range.
5. Confirm the answer does not claim broader historical coverage than the sources support.
6. Ask a local question that should use the configured communities, beats, or publication terminology.
7. Run a broader multi-article question and inspect whether the response represents differing dates or viewpoints accurately.
8. Give feedback on any response that is incorrect, weakly supported, or missing expected coverage.

Do not approve the outlet based only on fluent answer text. Citations must open, support the nearby claims, and come from the intended profile. See [Research Trails & Response Tools](discover-research-trails.md) for the evidence review workflow.

## 8. Complete the launch review

Confirm each item before handoff:

- [ ] Organization and outlet names are correct.
- [ ] All prompt-variable groups were saved and reloaded.
- [ ] Content permissions match the outlet's editorial policy and were saved.
- [ ] CMS connection profile values are present and consistent.
- [ ] Site and CMS API URLs point to the intended environment.
- [ ] Credential fields use approved environment variable references.
- [ ] The CMS connection reports **Configured**.
- [ ] Local-news categories, when configured, match the selected provider's taxonomy.
- [ ] Initial users have the narrowest appropriate roles.
- [ ] Invited users can activate their accounts.
- [ ] Required users can open the correct project and start a discussion.
- [ ] Known recent and historical questions return appropriate sources.
- [ ] Citations open and support the claims beside them.
- [ ] Engage domains include every approved environment.
- [ ] Domain enforcement was enabled only after origin testing.
- [ ] Engage Voice is OFF or its transport, speech output, model, and provider setup are confirmed.
- [ ] When voice is enabled, microphone access, spoken answers, source display, and recorded analytics are confirmed.
- [ ] The outlet administrator knows how to review [user feedback](admin-feedback.md).

Record the test date, tester, outlet, project, questions, expected sources, and any unresolved issues in the organization's approved launch record. Do not record passwords, tokens, keys, or secrets.

## 9. Hand off ongoing administration

Show the outlet administrator how to:

- invite and deactivate users;
- grant project access without broadening account roles;
- review feedback and its supporting question and answer;
- identify the selected outlet before changing variables;
- preserve stored CMS credentials when editing connection settings;
- manage content permissions according to the outlet's editorial policy;
- review voice settings and analytics when voice is enabled; and
- request platform help for organization, outlet, or configuration changes outside their scope.

Return to the [LiquidAmber administration overview](admin.md) for links to every administrative area.
