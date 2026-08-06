# Birth

Birth covers data elements that record the circumstances of an individual’s birth. It includes factual, verifiable attributes such as date, place, and conditions of birth, along with any official registration details issued by an authority.

## Implements Concepts from Person Domain, Concept Model

| Concept | Description |
|---------|-------------|
| Birth | Birth covers data elements that record the circumstances of an individual’s birth. It includes factual, verifiable attributes such as date, place, and conditions of birth, along with any official registration details issued by an authority. |

![Birth](../../entities/69a48be5f751de507cd4e22e/image.svg)

## Attributes

| Attribute | Description | Data type | Occurs |
|-----------|-------------|-----------|--------|
| Date of Birth Registration Date  | Date of Birth Registration Date is the official date on which a birth is formally recorded by the relevant civil authority (e.g., civil registry, vital records office, statistical authority). It reflects the administrative recognition of the birth event and is distinct from the Date of Birth itself.  This date marks when the birth record enters the official civil registration system, thereby enabling issuance of certificates, identity documentation, and subsequent legal processes. | date | once |
| Birth Date | Date of Birth (DOB) is the official calendar date on which an individual was born, as recognised by the appropriate civil authority or as evidenced by legally accepted documentation. It is a core identity anchor, used across legal, administrative, operational, and analytical systems, and is typically immutable once verified.  DOB is distinct from the Birth Registration Date (administrative) and the Birth Notification Date (clinical/operational). | date | once |
| Place of Birth | Place of Birth is the geographical location where the birth took place, as recorded by the relevant civil authority or evidenced through legally recognised documentation. It is a core identity attribute, supporting identity verification, eligibility checks, historical lineage, and demographic reporting. It denotes the physical location of the birth event, not the parents’ domicile, ancestral origins, or nationality. | line | once |
| Country of Birth | Country of Birth is the sovereign state or recognised territory in which an individual was born, recorded as part of the Birth life event. It reflects the geopolitical jurisdiction at the time of birth, typically captured using ISO‑3166‑1 country codes, and is often used as part of a person’s core identity record.  It is distinct from:  * Place of Birth (full locality: region, town, facility) * Nationality (legal status) * Self‑Identified Nationality (identity expression) * Ancestry or ethnicity (demographic domain) | lookup | many |
| Time of Birth | Time of Birth is the precise time at which an individual was born, recorded in hours and minutes (and optionally seconds) according to the local time zone of the birth location. It is a supplementary birth event attribute, not always available in all jurisdictions, and is typically captured when medically or administratively relevant (e.g., in maternity hospitals or civil registries that store time).  Time of Birth supports identity accuracy, medical lineage, and birth event completeness, but is not a core identity anchor in the same way that Date of Birth is. | time | once |
| Birth Registration Number | Birth Registration Number is the unique identifier assigned by a civil registration authority to a recorded birth event. It serves as the official reference number for the birth within the civil registry system and is used to:  * Link the birth record to authoritative registers * Support identity establishment * Enable issuance of certificates and identity documents * Ensure auditability and traceability of birth‑related updates  This number is assigned by the registering authority, not by the individual or the organisation storing it. | line | once |
| Multiple Birth Indicator | Multiple Birth Indicator identifies whether an individual is part of a multiple birth event, such as twins, triplets, quadruplets, or higher‑order multiples. It provides a binary and/or categorical classification that indicates:  * Whether the birth was part of a multi‑child event, and * Optionally, which child in the birth order the individual is.  This attribute supports identity integrity, clinical lineage, and birth record linkage. It does not store medical detail about pregnancy or delivery. | lookup | once |
| Facility/ Location Type | Birth Facility Location Type identifies the kind of location where an individual was born. It classifies the type of physical setting in which the birth occurred — such as a hospital, clinic, home, or other medically or administratively recognised environment.  This attribute enables a structured and standardised classification, independent of the specific facility name or address.  It does not store clinical details or health outcomes. | lookup | once |

## Relationships

- [Birth Was on Date of Birth](../../relationships/69fb6770ea1f7a349307e89d/index.html) → [Birth Date](../../entities/69fb660aea1f7a349307ba09/index.html)
- [Person Event MayInclude Birth](../../relationships/69a48c8ff751de507cd4eac0/index.html) ← [Person Event](../../entities/699dbe0ef751de507cd23a3f/index.html)
