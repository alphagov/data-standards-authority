---
creation_date: 2021-11-11
decision_date: 2021-11-11
status: accepted
---
# Alignment with the schema, while using a static website

## Context

This is a byproduct from ADR-0001, please review it for further context.

As the DSA Workbench is a static site, with the Standards information being contributed through Markdown files with YAML frontmatter, we have a decision around how aligned we want to be with the planned schema.

Because we have a mix of technical skills that are contributing to the repository, we need to balance schema adoption with ease of contribution.

Schema adoption could mean that we use different data files for each data store, and treat the Standards themselves as purely machine-readable data.

## Decision

We have decided to prioritise the alignment with the schema, instead of reducing the number of files that need to be modified.

This gives us the ability to start to align with the long-term data model before we migrate to using a full data store.

## Consequences

This will require a little more curation overhead, and as there will be a split across multiple files, there will be a little more work required by contributors to add/update standards.

Some data, such as the `Events` data will for now be stored in the frontmatter, instead of separately.

We will prioritise making sure contributing documentation is provided, and that support is provided to contributors to support them over time.

We will continue to use Markdown with YAML frontmatter, as that is a fairly well understood format for contributors.
