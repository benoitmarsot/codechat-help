# Why We Moved the Help System from a React App to MkDocs

## Background

Tobias originally built the help system as a standalone React app. In practice this turned out to be a costly choice.

## Problems with the React App Approach

- **Multiple apps to maintain**: the help site was its own React codebase, with its own dependencies, build tooling, and upgrades to track, on top of the main app.
- **Publishing cycle mismatch**: help content should be able to change at any time (typo fixes, new sections), but it was tied to the same build/release pipeline as the app, so a doc fix required a full app-style release.
- **React knowledge required to contribute**: any content update meant touching JSX/components and going through npm/build tooling, which excludes writers, support, or product people who just want to edit text.
- **No content-authoring tools**: no live preview, no simple navigation/theming system, everything (search, layout, structure) had to be hand-built.
- **Higher risk per change**: a one-line text edit carried the same review/build/deploy risk and overhead as a code change.
- **Poor separation of concerns**: documentation lived in the same repo and bundle as production app code, increasing the blast radius of unrelated changes and bloating the app bundle.
- **Restricted contributor pool**: only engineers comfortable with React could realistically write or fix docs.

## The MkDocs-Based Solution

[MkDocs](https://www.mkdocs.org) turns a YAML navigation tree (`mkdocs.yml`) plus Markdown source files into a static HTML documentation website. It gives us:

- **Several themes and styles** to choose from (we're using the Material theme).
- **A large ecosystem of plugins/material extensions** to add features (search, admonitions, navigation sections, tabs, etc.) without writing custom code.
- **A simple content model**: write Markdown, describe the nav in YAML, get a static site, no JavaScript framework, bundler, or component code involved.
- **Anyone who can write Markdown can contribute**, no React or frontend build knowledge needed.
- **Fast local iteration** via `mkdocs serve`, which live-reloads as pages are edited.
- **Cheap, simple static hosting**: the built site is just static files (we deploy to S3 behind CloudFront).
- **Built-in search** out of the box (Lunr-based, no extra service to run).
- **Easy reorganization**: adding, moving, or removing a page is a Markdown file plus a one-line change in `mkdocs.yml`.

## Detaching Help from the Main Git Repository

The help site now lives in its own repository (`codechat-help`), separate from the application code.

Advantages:

- **Independent release cadence**: docs can be published at any time without waiting on, or triggering, an app deployment.
- **Safe, easy contribution**: collaborators can be given access to write/edit/remove docs without touching or risking the app codebase.
- **Smaller, focused reviews**: pull requests are docs-only, quick to read and approve.
- **Clear ownership boundary**: app engineers aren't blocked by docs changes, and docs contributors aren't blocked by app release cycles.
- **Low-friction onboarding**: non-engineering contributors (support, product) can start contributing without learning the app's build system, MkDocs is the only tool involved.
- **Independent deploy pipeline**: [deploy.sh](../deploy.sh) builds and publishes the docs site on its own, decoupled from the app's CI/CD.

## Current Deployment

- Built with `mkdocs build --clean`.
- Synced to an S3 bucket and served through a CloudFront distribution.
- Published at [https://www.liquidamber.ai/help/](https://www.liquidamber.ai/help/).
- Each publish invalidates the CloudFront cache so changes go live immediately.

## Current Status and Open Items

The site is live, but not yet linked from the application (no `?` help button wired up yet). It's intentionally left unlinked for now so we have time to discuss and finish it first.

Relying on the URL being unlisted is **security through obscurity**, not real access control. It should be treated as a temporary state, not a long-term protection, and revisited before the button is added. Points to decide:

- **When/how to wire up** the in-app `?` help button once the access model is decided.
- **Contribution workflow** for the `codechat-help` repo (branch/PR review process) once more people are invited.

Adding/editing/removing pages is straightforward with this setup, so collaborators will be invited to the `codechat-help` repo to contribute directly.
