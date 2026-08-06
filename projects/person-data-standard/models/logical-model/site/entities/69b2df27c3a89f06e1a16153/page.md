# Residence Status

Residence Type specifies the role, purpose, and legal/operational meaning of a residency relationship between a place or property and a person.

## Implements Concepts from Person Domain, Concept Model

| Concept | Description |
|---------|-------------|
| Residence Status | Residence Type specifies the role, purpose, and legal/operational meaning of a residency relationship between a place or property and a person. |

![Residence Status](../../entities/69b2df27c3a89f06e1a16153/image.svg)

## Attributes

| Attribute | Description | Data type | Occurs |
|-----------|-------------|-----------|--------|
| Residence type | Residence Type describes what kind of residence a Residence Fact represents — such as primary, secondary, historical, declared, inferred, or statutory — providing semantic clarity for business rules, compliance, and interpretation. | lookup | many |
| Current | Current Residence is the Residence Fact for which the Residence Status is Active, the effective period includes today, and the record has not been superseded or ended. | yes/no | once |
| For Taxation | Residence for Tax is the legally recognised tax residency of a Party, determined by statutory criteria and supported by verified residency facts, used to establish tax obligations, compliance, reporting, and regulatory responsibilities. | yes/no | once |
| Status source | Declared and Observed are semantic qualifiers that describe how a residence fact was created or asserted:  * Declared Residence — the Party (person or legal entity representative) told you this is their residence. * Observed Residence — the organisation inferred or detected this residence from system behaviour, external signals, or passive data sources. | lookup | many |
| Dates |  | structure | many |

## Relationships

- [Residence may have Residence Status](../../relationships/69b2df3ec3a89f06e1a1655f/index.html) ← [Residence](../../entities/69b2a6ddc3a89f06e1a0de69/index.html)
