# Residence

A time‑bounded assertion that a Person resides at a Location with a specified Residence. Includes legal/primary residence, secondary residences, historical changes, validation against jurisdictional reference data. Excludes temporary contact addresses, delivery addresses, lodging/travel events, property ownership details (unless used to evidence residence).

## Implements Concepts from Person Domain, Concept Model

| Concept | Description |
|---------|-------------|
| Residence | A time‑bounded assertion that a Person resides at a Location with a specified Residence. Includes legal/primary residence, secondary residences, historical changes, validation against jurisdictional reference data. Excludes temporary contact addresses, delivery addresses, lodging/travel events, property ownership details (unless used to evidence residence). |

![Residence](../../entities/69b2a6ddc3a89f06e1a0de69/image.svg)

## Attributes

| Attribute | Description | Data type | Occurs |
|-----------|-------------|-----------|--------|
| Residence Handling |  | structure | many |
| Residence Status |  | structure | many |
| Residence Verification |  | structure | many |
| Residence Identification |  | structure | many |

## Relationships

- [Person May have Residence](../../relationships/69b2cab8c3a89f06e1a0fb00/index.html) ← [Person](../../entities/699dbdecf751de507cd233fc/index.html)
- [Residence MayHave Residence identification](../../relationships/69b2cae2c3a89f06e1a0fcae/index.html) → [Residence identification](../../entities/69b2a79fc3a89f06e1a0e8c8/index.html)
- [Residence may have Residence Status](../../relationships/69b2df3ec3a89f06e1a1655f/index.html) → [Residence Status](../../entities/69b2df27c3a89f06e1a16153/index.html)
- [Residence may have Residence Verification](../../relationships/69b2e018c3a89f06e1a17e95/index.html) → [Residence Verification](../../entities/69b2e007c3a89f06e1a17a7d/index.html)
- [Residence Requires Residence Handling](../../relationships/69b2e072c3a89f06e1a18933/index.html) → [Residence Handling](../../entities/69b2e04bc3a89f06e1a1850f/index.html)
