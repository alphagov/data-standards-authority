# Full Name

Full Name represents a combined or displayable expression of a person’s name.

It may be formed from formal name components, informal name components, or both, depending on context.

In some cases, Full Name may reflect the authoritative identity as it is presented or used.

However, it is not the authoritative structured identity record and must not replace Formal Name or Informal Name in the underlying model.

## Implements Concepts from Person Domain, Concept Model

| Concept | Description |
|---------|-------------|
| Full Name | Full Name represents a combined or displayable expression of a person’s name. It may be formed from formal name components, informal name components, or both, depending on context. In some cases, Full Name may reflect the authoritative identity as it is presented or used. However, it is not the authoritative structured identity record and must not replace Formal Name or Informal Name in the underlying model |

![Full Name](../../entities/6a182eac4055a62b0ab568ab/image.svg)

## Attributes

| Attribute | Description | Data type | Occurs |
|-----------|-------------|-----------|--------|
| Full Name Value | Full Name Value stores the combined or displayable expression of a person’s name. It may be formed from formal name components, informal name components, or both, depending on context. In some cases, it may reflect the authoritative identity as it is presented or used; however, it is not the authoritative structured identity record. | line | once |
| Dates | Dates describe the period during which a Full Name instance is valid or in use.  This may include attributes such as effective\_from, effective\_to, and capture\_date.  Temporal information enables the representation of name history and supports multiple Full Name instances over time. | data type | many |

## Relationships

- [Informal Name May contribute to Full Name](../../relationships/69d4ee109f84c55e2993a1aa/index.html) ← [Informal Name](../../entities/69a4939cf751de507cd54f65/index.html)
- [Formal Name MayContributeTo Full Name](../../relationships/6a1834fe4055a62b0ab5926a/index.html) ← [Formal Name](../../entities/69a49187f751de507cd52317/index.html)
