# Residence identification

Residence Identification refers uniquely and consistently identify, reference, and distinguish one residence fact from another within a Party domain.

## Implements Concepts from Person Domain, Concept Model

| Concept | Description |
|---------|-------------|
| Residence identification | Residence Identification refers uniquely and consistently identify, reference, and distinguish one residence fact from another within a Party domain. |

![Residence identification](../../entities/69b2a79fc3a89f06e1a0e8c8/image.svg)

## Attributes

| Attribute | Description | Data type | Occurs |
|-----------|-------------|-----------|--------|
| Residence ID | Residence ID is the globally unique, immutable identifier assigned to a Residence Fact — the relationship between a Person and a Location, with associated type, status, verification, and temporal attributes. | line | many |
| Jurisdiction of residence | Jurisdiction of Residence is the legal or administrative authority that governs the residences Location. | lookup | many |
| Dates |  | structure | many |

## Relationships

- [Residence MayHave Residence identification](../../relationships/69b2cae2c3a89f06e1a0fcae/index.html) ← [Residence](../../entities/69b2a6ddc3a89f06e1a0de69/index.html)
