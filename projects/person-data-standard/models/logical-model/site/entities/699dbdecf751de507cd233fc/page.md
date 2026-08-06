# Person

An individual human who participates in business activities or interactions. The Person concept represents the identity of a human being independent of the roles they may perform, the relationships they may have, or the contexts in which they act.

## Implements Concepts from Person Domain, Concept Model

| Concept | Description |
|---------|-------------|
| Person | An individual human who participates in business activities or interactions. The Person concept represents the identity of a human being independent of the roles they may perform, the relationships they may have, or the contexts in which they act. |

![Person](../../entities/699dbdecf751de507cd233fc/image.svg)

## Attributes

| Attribute | Description | Data type | Occurs |
|-----------|-------------|-----------|--------|
| Biological Attributes |  | structure | once |
| Citizenship |  | structure | once |
| Ethnicity (Cultural identify) |  | structure |  |
| Genetic Ethnicity |  | structure |  |
| Name |  | structure | once |
| Nationality |  | structure | once |
| Person Event |  | structure | many |
| Identifiers |  | structure | many |
| Titles |  | structure | once |

## Relationships

- [Person May have Residence](../../relationships/69b2cab8c3a89f06e1a0fb00/index.html) → [Residence](../../entities/69b2a6ddc3a89f06e1a0de69/index.html)
- [Person Has Genetic Ethnicity](../../relationships/69a4a8fdf751de507cd60a2e/index.html) → [Genetic Ethnicity](../../entities/69a4a737f751de507cd60353/index.html)
- [Person has Ethnicity (Cultural identify)](../../relationships/69a4a92bf751de507cd61341/index.html) → [Ethnicity (Cultural identify)](../../entities/69a4a915f751de507cd611f1/index.html)
- [Person MayHave Titles](../../relationships/69a4a973f751de507cd61c5e/index.html) → [Titles](../../entities/69a4a95ef751de507cd61b0a/index.html)
- [Person Has Nationality](../../relationships/69a4a6bdf751de507cd5fa55/index.html) → [Nationality](../../entities/69a4a3e2f751de507cd5e547/index.html)
- [Person has Biological Attributes](../../relationships/69a49621f751de507cd5773a/index.html) → [Biological Attributes](../../entities/69a49610f751de507cd5766e/index.html)
- [Person MayHave Name](../../relationships/69a4743cf751de507cd3f2b3/index.html) → [Name](../../entities/69a4741df751de507cd3f284/index.html)
- [Person Has Citizenship](../../relationships/69a49576f751de507cd56f2d/index.html) → [Citizenship](../../entities/69a49420f751de507cd55a75/index.html)
- [Person Has Person Event](../../relationships/699dbe50f751de507cd23a63/index.html) → [Person Event](../../entities/699dbe0ef751de507cd23a3f/index.html)
- [Person Has Identifiers](../../relationships/69a4a25bf751de507cd5d0d5/index.html) → [Identifiers](../../entities/69a4a242f751de507cd5cfb1/index.html)
