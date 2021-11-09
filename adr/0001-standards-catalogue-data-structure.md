---
creation_date: 2021-11-09
decision_date: null
status: proposed
---
# Define the schema for the standards catalogue

## Context

The Standards Catalogue, which sits under the Data Standards Authority Workbench (DSA Workbench), is used to capture standards that the DSA are looking at, before they become official guidance on Gov.UK.

As part of plans to enhance the Workbench by producing schema.org metadata, we discovered that the underlying data wasn't quite standardised.

Although this is currently a static website, at some point it may progress into a fully fledged application with a data store, and we want to take this opportunity to invest in a forward-thinking data model, which would work with a backing data store.

## Decision

The Entity Relationship Diagram can be seen below:

![Entity Relationship Diagram for the Standards Catalogue](https://kroki.io/erd/svg/eNqNkrFugzAQhnc_hcUYyJC1WweGqhUgkqqqEIpc-xKdCobaplVV8e41JlEMqUgHS77zd-ff_7nYGiYFU6IkKxQgDR4QFJGsBvpDK_YG1R0NtFEojxFV8NGhAhHQnvBGGsW4wUbeIHUL3LblbGD3_2g9LehU5fE2WoIFM373IZziAjRX2M5k10y9i-ZLDkSoDTOd3qMgoWla5G5XIQfJwe1rhtLYBWoISRF_WuN06SqdmY66tBlF-ZqC3pZtHXBtvK_RYrtBw03qadQ34S53Xrncn0a8AJjv1gNAdnWRZnESZXma5Q_x7j5_jZ6TxyR9SUqLuzF5U3JPTNWRSdRuNn_9sIXr5_0mh-T8belmvV7RczRJh9Q5N8lt6MmnWdbXOTsap0R-AdY7GFM=)

This allows a set of specific information to be available in each Standard, and:

- Gives us the opportunity to track the catalogue status events that an entry goes through, such as _In Review_ to _Endorsed_, without it being tracked as a set of fields in the `Standard` itself
- We decided that `specification_*` information would sit within the `Standard`, as it was very unlikely that we would produce multiple `Standard`s that had the same `specification`
- License categorisation was added to make it clearer to the consumers of the site whether the licensing of the standard is Open/Proprietary, with the option to also add Unknown for cases where it is difficult to tell

<details>

<summary>Entity Relationship Diagram (raw)</summary>

```erd
[Standard]
*identifier
name { label: "string, required" }
contraction { label: "string, required" }
specification_name { label: "string, required" }
specification_url { label: "url, required" }
specification_date { label: "date, required" }
description { label: "markdown" }
+status_id
+topic_id
+licence_id
+maintainer_id

[Events]
+standard_id
+status_id
date {label: "date"}

[Status]
*identifier
name
description

[Topic]
*identifier
name
description

[Licence]
*identifier {label: "string, required"}
name {label: "string, required"}
type {label: "enum[OPEN,PROPRIETARY,UNKNOWN]"}
url {label: "url"}

[Organisation]
*identifier
name {label: "string, required"}
url {label: "url, required"}

Standard 1--* Standard
Standard 1--+ Topic
Standard 1--1 Licence
Standard 1--1 Organisation
Standard 1--1 Status
```

</details>

## Consequences

As the site is currently a static website, and is being contributed to by folks with a mix of technical skills, we have opted to prioritise the use of YAML frontmatter in Markdown files, aiming to allow modifying only one file where possible to add a standard.

For instance, this means that the `Events` data will for now be stored in the frontmatter, instead of separately.
