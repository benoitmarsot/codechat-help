# Discover

## Overview

LiquidAmber Discover is a newsroom research agent. It queries your CMS and other connected content sources to deliver sourced, cited answers for editors and reporters.

## What it does

- Answers research questions directly from your own publication's content and connected sources.
- Returns answers with citations back to the original source material so the basis for an answer stays visible.
- Helps reporters and editors retrieve relevant background and prior coverage faster during research.

## Guides

- [Getting Started with Discover](discover-getting-started.md) — how to write effective queries, understand your archive, and why each new topic should get its own discussion.
- [User Interface Guide](discover-interface.md) — a tour of the main screen, the user control panel, and the left menu options on each discussion.
- [Research Trails & Response Tools](discover-research-trails.md) — how sourcing is shown, and the tools available on each response.

## Project

A project is a container for your discussions plus its own AI configuration (model, prompt, data sources) and its own list of users who can access it.

- **Create** – start a new project through the setup wizard: name, description, outlet, and initial assistant/prompt configuration.
- **Duplicate** – copy an existing project's full configuration under a new name and description.
- **Edit** – update a project's name or description.
- **Delete** – remove a project. An outlet user cannot delete their only project.
- **Manage access** – add or remove the users who can use the project.
- **Configure assistants** – choose the AI model used for the main assistant, the social assistant, and the image-describer function.
- **Configure data sources** – connect the project to the CMS or other content sources it can query.
- **Launch a discussion** – start chatting inside the project.

## Discussion

A discussion is a single conversation thread inside a project, made up of your messages, the assistant's responses, and metadata like creation date and favorite status.

- Start a new discussion.
- Browse discussion **history**.
- **Favorite** or unfavorite a discussion.
- **Rename** a discussion or add a description.
- **Export** a discussion to PDF.
- **Delete** a discussion.
- Watch responses **stream** in as they're generated, and use **suggested follow-up questions** to keep going.
- **Create a visualization** from a discussion – this hands off to [Describe](describe.md) to turn findings into a chart or graphic.

For a screenshot walkthrough of the discussion list and its menu options, see the [User Interface Guide](discover-interface.md#left-menu-options).

## Admin

Admin tools are reached from the user menu. The pages and actions shown depend on your role and access scope:

- [**Users**](admin-users.md) creates accounts and assigns platform, organization, or outlet roles.
- [**Outlets**](admin-outlets.md) manages organizations, outlet prompt variables, Blox MCP settings, and Engage security.
- [**Announcements**](admin-announcements.md) sends or schedules targeted HTML email.
- [**Feedback**](admin-feedback.md) reviews rated Discover responses and their sources.

Start with the [Discover Administration Guide](admin.md) for access scope, safety guidance, and complete procedures.

## Profile

- **Name** – editable.
- **Email**, **role**, and **account status** – read-only.
- **Password** – change your password.

## Personal memory

Personal memory stores facts you want the assistant to remember, in two scopes:

- **Global** – available across all of your projects.
- **Project** – tied to one specific project.

You can create, edit, and delete memories; edits can change the content, importance (low, normal, or high), and expiration date, but the scope and project are fixed once a memory is created. You can also filter the memory list by scope and toggle a memory between active and expired.

