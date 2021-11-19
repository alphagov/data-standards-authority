---
creation_date: 2021-11-19
decision_date: 2021-11-19
status: accepted
---
# Make the `contraction` field optional in standards

## Context

While doing an initial handover with members of the DSA team after adopting the schema as defined in _ADR-0001_, a question was raised about whether the contraction was required.

Despite us previously deciding that this would be required, we didn't fully consider the case where a common contraction is not in use.

## Decision

We have decided to make it optional, as it does not always provide value by having one there, especially if it is not a commonly used contraction, but was instead added by us just to make it pass validation.

The Entity Relationship Diagram can be seen below:

![Entity Relationship Diagram for Standards](https://kroki.io/erd/svg/eNqlkk1rhDAQhu_5FWGPq3vYa289eCgtKu6WUkSWaTIroRptEltK8b83iUrVLQulh4TM5Mk7X8kPBiQHxQuyFRylEWeBikiokX7RCl6wuqEbbZSQZUgVvnVCId_QnrBGGgXMiEZekO5et8isGANHnDpVzShrLcU4aqZEuxKrQb3y5kM6IjBQngQnQSUYSob-XIOQxi5UziR59G4rKEigx6I8ZA3TaXfkYGxVk_oUP6TOv-nt-4NH_9yKWfZW5AjlPxUehhIXKj95X7zvxwhXAPPZzgCUXZ0naRSHaZak2V10vM2ew8f4Pk6e4sLiflqzYfnmJKoEKbSf528FXgm_1ltckukL0v1ut6WTtXAH1HZ14dnTsUsr7zzLlYT_HcTvAzuMm3wDKigIXA==)

<details>

<summary>Entity Relationship Diagram (raw)</summary>

```erd
[Standard]
*identifier
name { label: "string, required" }
contraction { label: "string" }
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

The author will need to determine whether there is a contraction currently in use that makes sense.

Existing contractions that were defined by us for the purpose of schema validation will be removed.
