# Use personal memory

Personal memory lets Discover retain facts, preferences, and context that should remain useful beyond one message. Active memories are made available automatically when the assistant handles an eligible request, so you do not need to repeat them in every discussion.

Memories belong only to your account. They are not a substitute for source material, project access, or facts that should be verified from the publication archive.

## Choose a scope

Every memory has one scope, which cannot be changed after the memory is created.

| Scope | Use it for | Where it applies |
| --- | --- | --- |
| **Global** | Stable preferences or facts that are useful throughout your work | All eligible projects for your account |
| **Project** | Names, terminology, goals, or context specific to one project | Only the selected project |

Use **Project** scope by default when information belongs to one investigation, beat, client, or outlet. Use **Global** only when the information should influence work across projects.

## Open Personal memory

1. Open your user menu.
2. Select **Personal memory**.

The page lists each memory's subject or scope, content, project when applicable, status, and importance. Use the **Scope** filter to show all, global, or project memories. Pull to refresh on supported devices to reload the list.

## Create a memory

1. Select **Add memory** in the page header.
2. Enter an optional **Subject** that will make the item easy to scan later.
3. Enter the fact or preference in **Memory**.
4. Choose **Global** or **Project** under **Scope**.
5. If you selected **Project**, choose the project where the memory belongs.
6. Set its **Importance**.
7. Optionally choose an **Expires** date.
8. Select **Save**.

Memory content is required. A project-scoped memory also requires a project.

### Write useful memories

Keep each memory short, specific, and limited to one durable idea. Good candidates include:

- a preferred name or abbreviation;
- terminology that should be used consistently;
- a stable research preference;
- the scope or goal of a long-running project; or
- context that would otherwise need to be repeated in every new discussion.

Do not save passwords, authentication tokens, API credentials, payment details, government identifiers, private third-party information, or sensitive source material.

## Set importance

Importance affects which memories receive priority when the assistant can use only a limited number of items.

- **High** is for essential, durable context. High-importance memories are protected from automatic capacity cleanup.
- **Normal** is appropriate for most useful facts and preferences.
- **Low** is for optional context that can be replaced when memory capacity is needed.

When a scope reaches its configured capacity, Discover removes the oldest eligible low- or normal-importance memory to make room. If every memory in that scope is **High**, saving another memory is rejected until you delete an item or lower its importance.

## Use expiration dates

Set an expiration date when a memory should stop influencing answers after a known deadline, such as an election, event, temporary assignment, or reporting cycle.

Expired memories remain visible with an **Expired** status but are not supplied to the assistant. You can edit an expired memory and turn **Active** back on when it becomes relevant again.

## Edit a memory

1. Select **Edit memory** on the item.
2. Update its subject, content, importance, active status, or expiration.
3. Select **Save**.

The original scope and project are locked. To move a memory, create a new item in the correct scope and delete the old one.

## Delete or clear memories

### Delete one memory

1. Select **Delete memory**.
2. Review the displayed memory content.
3. Select **Delete**.

The memory disappears from the page and is no longer used. There is no restore action in the application.

### Clear memories with expiration dates

The **Clear memories with an expiration set** action removes every global and project memory on your account that has an expiration date. This includes memories whose expiration date has not arrived yet.

This bulk action runs immediately and does not show a confirmation dialog. Review the list and delete individual items instead when you need to keep some time-limited memories.

## Ask the assistant to remember or forget

You can also make an explicit request in a conversation, such as "Remember that this project uses the council's fiscal-year labels" or "Forget my preferred chart color." The assistant can use the memory tools available to that project to carry out the request.

Open **Personal memory** afterward when you want to verify the saved scope, adjust importance or expiration, or confirm that an item was removed.

## Understand how memories affect answers

For an eligible project, Discover combines your active global memories with active memories for the current project. Higher-importance items are considered first, followed by more recently updated items.

Memory is user-provided context, not verified evidence. Check factual claims against the response's citations and [research trail](discover-research-trails.md#clear-research-trails), especially when a saved memory may be outdated.
