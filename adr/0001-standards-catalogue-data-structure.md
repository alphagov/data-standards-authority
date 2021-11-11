---
creation_date: 2021-11-11
decision_date: 2021-11-11
status: accepted
---
# Define the schema for the standards portion of the Data Standards Authority Workbench

## Context

The standards section of the Data Standards Authority Workbench (DSA Workbench), is used to capture standards that the DSA are reviewing, before they become official guidance on Gov.UK. It is also an attempt to map other standards in use across government, both for the DSA's internal prioritisation activities and to enable external users to find relevant data standards. To begin with, this second focus is served by curating a list of standards catalogues.

As part of plans to enhance the Workbench by introducing schema.org metadata, we discovered that the underlying data wasn't quite standardised.

Although this is currently a static website, at some point it may progress into a fully fledged application with a data store, and we want to take this opportunity to invest in a forward-thinking data model, which would work with a backing data store.

## Decision

The Entity Relationship Diagram can be seen below:

![Entity Relationship Diagram for Standards](https://kroki.io/erd/svg/eNqlkk1PhDAQhu_9FQ3HhT3s1ZsHDkYDhN2NMYRsxnaWNEJh26Ixhv9uKRABzRrjoU1n-vSdr2Z7A5KD4jnZCI7SiLNARSRUSD9oCc9Y3lBPGyVkEVCFl1Yo5B7tCKulUcCMqOUvpG6QWVkGPXtqVTnjrbWEOWqmRLOSrUC98PpN9oRvoDgJTvxSMJQM3bkCIY1dqHqTZOGrrSUnvh7Lc5A1TKv7Iwdj65vUp_gB7f1eZ9_vHfrnpsyytyIHKP6p8DCUuFD5yvvb-26McAUw780MQNlWWZyEUZCkcZLehYfb9Ck4RvdR_BjlFnfTmg3LNSdWBUih3Tx_KvBK-LXe4pJMn5HuttsNnayF26e2qwvPjo5dWnnnWa4k3O8gbh_YYdzkE0j5DAk=)

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
specification_url { label: "url, required" }
description { label: "markdown" }
+tag_id
+licence_id
+maintainer_id

[Event]
+standard_id
+status_id
date {label: "required, date"}

[Status]
*identifier
name { label: "string, required" }
description

[Tag]
*identifier
name { label: "string, required" }
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
Standard 1--+ Tag
Standard 1--1 Licence
Standard 1--1 Organisation
Standard 1--+ Event
Event 1--1 Status
```

</details>

## Consequences

No consequences at this time.
