# Projects and collaboration

A project is the workspace that holds related discussions, assistant settings, connected tools or sources, and the people who can use them. Create a separate project when the subject, audience, outlet, or research configuration needs to be managed independently.

The projects and actions visible to you depend on your access. If a control described here is not shown, ask your LiquidAmber administrator whether your role or project assignment includes it.

## Browse projects

Open **Projects** to see the workspaces available to your account. Each project shows its name, description, author, latest activity, user-message count, and assistant type.

- Use **Filter by name** to find a project by title.
- Use **Filter by user** to find projects by author.
- Sort by **Name**, **Date**, or **User**, then use the arrow to reverse the order.
- Switch between list and grid views. Discover remembers that layout on the device.
- Select a project row or card to open its discussions.
- Select **Settings** to open **Project Details**.

If the page says **No projects found**, create a project if **New Project** is available or ask a project owner to grant you access. If no projects match after filtering, clear one or both filters.

## Create a project

Select **New Project** to open the two-step wizard.

### Step 1: Project Setup

1. Confirm **Target email**. Most users create a project for themselves; authorized administrators may be able to select another user.
2. Confirm the **Outlet**. Outlet-scoped accounts use an authorized outlet and may have only one available choice.
3. Enter a clear **Project name**.
4. Add a short **Project description** that explains the research purpose or team.
5. Review **Prompt type**, **Prompt subtype**, and **Prompt flavor**. Some choices are fixed by your role or outlet configuration.
6. Leave the configured **MCP payload** unchanged unless you are responsible for the project's tools and know the required JSON structure.
7. Continue to **AI Configuration**.

If Discover reports that no active outlet with project access is assigned to your account, contact an administrator before continuing.

### Step 2: AI Configuration

Review the assistant configuration supplied for the project. Model selection and advanced settings may be locked for your account. Select the final create action once the configuration is correct.

After Discover confirms **Project created successfully**, it opens **Project Details** and refreshes the project list.

## Start or resume research

Select a project from the list to open its discussion workspace. From **Project Details**, select **Discussion** to reach the same workspace.

Keep one topic or investigation in each discussion. Create a new discussion when you change subjects so earlier conversation context does not affect the new research. See [Getting Started with Discover](discover-getting-started.md#3-start-a-new-discussion-for-each-new-topic).

## Understand Project Details

The tabs shown in **Project Details** depend on your permissions:

| Tab | Purpose |
| --- | --- |
| **Overview** | Shows the project's connected MCP tools or configured sources. |
| **Assistants** | Shows assistant and model settings to accounts with assistant-configuration access. |
| **User Access** | Lists project members and sharing controls for project managers. |

Use **Edit** to change the project name or description. Project names must be between 3 and 100 characters; descriptions must be fewer than 500 characters.

Advanced assistant, prompt, source, and MCP changes affect every discussion in the project. Make those changes only when you own the configuration and can test the resulting answers.

## Share a project

Project managers can grant and revoke access from the **User Access** tab.

### Grant access

1. Open **Project Details > User Access**.
2. Select **Grant User Access**.
3. Search the available users by name or email.
4. Select one user.
5. Wait for the confirmation that the user was added.

Only eligible users appear in the picker. Users who already have access are excluded.

### Revoke access

1. Find the user under **User Access**.
2. Select **Revoke Access**.
3. Review the user's name in the confirmation dialog.
4. Select **Remove**.

Revoking access prevents that person from reopening the project. It does not change the person's account role or access to other projects.

## Duplicate a project

Duplicate an existing project when you need its configuration as a starting point without reusing its discussions.

1. Open the project's three-dot menu.
2. Select **Duplicate**.
3. Review the proposed name, which ends in **(Copy)**.
4. Update the name and description as needed.
5. Select **Duplicate**.

Discover creates a new project from the source project's configuration. The new project does not copy the source discussion history.

## Edit or delete a project

Project owners and authorized managers can open the three-dot menu to **Edit** or **Delete** a project.

### Edit

Change the name or description, then select **Save**. This does not change the project's discussions or user access.

### Delete

Select **Delete**, review the project name, and confirm only when the workspace is no longer needed. The project is removed from the active project list, and there is no restore control in the application.

An account whose only role is **Outlet User** cannot delete its only project. Create another project or contact an administrator first.

## Resolve common access issues

| Situation | What to do |
| --- | --- |
| A known project is missing | Clear the filters, then ask the project owner to check **User Access**. |
| **New Project** is not shown | Ask an administrator whether your role includes project use. |
| The outlet is missing or fixed | Your outlet choices are limited by your assigned access. Ask an administrator to correct the assignment. |
| **Assistants** is not shown | Advanced assistant settings require separate configuration permission. |
| **User Access**, **Edit**, or **Delete** is not shown | Those actions are available only to the owner or an authorized project manager. |
| A recent role change is not reflected | Sign out and back in so Discover can load the updated permissions. |

For account-level role changes, see [Manage users](admin-users.md#manage-access).
