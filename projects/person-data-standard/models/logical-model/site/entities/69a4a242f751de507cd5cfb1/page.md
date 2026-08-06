# Identifiers

Unique references that distinguish one Natural Person from all others within a given context, system, or jurisdiction. They are assigned by an authority (e.g., a government, organisation, or system) for the purpose of uniquely recognising, managing, or relating to that person across processes and datasets.

Identifiers are not the person, and they are not personal attributes (like name, gender, or date of birth). They are tokens that point to the person.

## Implements Concepts from Person Domain, Concept Model

| Concept | Description |
|---------|-------------|
| Identifiers | Unique references that distinguish one Natural Person from all others within a given context, system, or jurisdiction. They are assigned by an authority (e.g., a government, organisation, or system) for the purpose of uniquely recognising, managing, or relating to that person across processes and datasets.  Identifiers are not the person, and they are not personal attributes (like name, gender, or date of birth). They are tokens that point to the person. |

![Identifiers](../../entities/69a4a242f751de507cd5cfb1/image.svg)

## Attributes

| Attribute | Description | Data type | Occurs |
|-----------|-------------|-----------|--------|
| Biometric Identifiers |  | structure | once |
| Personal Identifiers | Reference numbers | structure | once |

## Relationships

- [Person Has Identifiers](../../relationships/69a4a25bf751de507cd5d0d5/index.html) ← [Person](../../entities/699dbdecf751de507cd233fc/index.html)
- [Identifiers Includes Biometric Identifiers](../../relationships/69a4a288f751de507cd5d20d/index.html) → [Biometric Identifiers](../../entities/69a4a1c2f751de507cd5c494/index.html)
- [Identifiers MayInclude Personal Identifiers](../../relationships/69a4a312f751de507cd5dafa/index.html) → [Personal Identifiers](../../entities/69a4a2f7f751de507cd5d9d0/index.html)
