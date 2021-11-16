# Adding a new standard

To see a finished example of a standard, see any of the existing standards, for example [360giving](https://raw.githubusercontent.com/alphagov/data-standards-authority/adding-a-standard-docs/content/standards/360giving/index.html.md).

To add a new standard in Github:

- Go to the [standards](../../content/standards) directory
- Create a new file called `index.html.md` inside a directory named after the standard. For example to create a standard for `360 Giving` you'd create a file called `360giving/index.html.md`.
- Copy and paste the frontmatter template below to the top of the file and fill out the missing information:   


```
---
name:  
contraction:   
specification_url:   
tags:
-
maintainer_id:   
licence_id:   
endorsement_status_events:   
- status:   
  date: ""
---
```

The information in the frontmatter will be displayed in a table. Any other content can be added below it.

## Filling out the frontmatter

Some further information, for example about organisations, licences, tags and statuses, is kept in separate [data files](../data). Check to see if there is already an entry for the maintainer, licence or tag you're using. If there is you can reuse it, or if there's not you can add a new one to the data file.

- maintainer_id relates to an entry in the [organisations](../data/organisations.yml) file.
- `licence_id` relates to an entry in the [licences](../data/licences.yml) file.
- `tags` relates to entries in the [tags](../data/tags.yml) file.
- `status` is in the [statuses](../data/statuses.yml) file and can either be endorsed or review (all lower case).

If you have any questions, get in touch with a member of the [DSA team](https://github.com/orgs/alphagov/teams/dsa-reviewers).
