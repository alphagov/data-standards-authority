# Physiological Information

Physiological Information describes non‑clinical, non‑diagnostic information about an individual’s biological and bodily functions. It includes physiological or biologically‑derived attributes such as blood type, genetic traits, self‑reported disability, and organ donor status. These attributes are descriptive and operational in nature, rather than cognitive, emotional, or behavioural characteristics, and do not uniquely identify a person

## Implements Concepts from Person Domain, Concept Model

| Concept | Description |
|---------|-------------|
| Physiological Information | Physiological Information in the Person domain represents non‑clinical, non‑diagnostic information about an individual’s biological and bodily functions. This includes measurable or observable physiological attributes that describe how the body operates (for example blood type, genetic traits, or organ donor status), rather than cognitive, emotional, or behavioural characteristics. These attributes are descriptive and operational in nature and do not, by themselves, uniquely identify a person |

![Physiological Information](../../entities/69a49fbdf751de507cd5a26c/image.svg)

## Attributes

| Attribute | Description | Data type | Occurs |
|-----------|-------------|-----------|--------|
| Blood Type | Blood Type is a categorical physiological attribute representing an individual’s blood group classification based on recognised antigen systems, primarily the ABO and RhD systems (e.g., A+, O‑, AB−). It describes a stable biological characteristic with operational relevance in certain safety, welfare, and emergency contexts. It is not a diagnostic or medical condition. | lookup | once |
| Genetic Traits | Genetic Traits represent stable, inherited biological characteristics that are encoded in an individual’s DNA and manifest as observable, non‑clinical traits (e.g., eye colour predisposition, lactose tolerance, natural hair colour tendency). This attribute captures general genetic tendencies, not medical diagnoses, disease markers, or full genomic data. | text | many |
| Self-reported disability | Also known as impairment.  Self-reported disability is a rights‑based characteristic indicating that an individual has a long‑term physical, mental, cognitive, or sensory impairment which, in interaction with barriers, may limit equal participation in daily activities or environments. This attribute reflects functional impact and support needs, not medical diagnoses or clinical details. | structure | many |
| Organ Donor | Organ Donor indicates whether an individual has formally recorded consent, objection, or preference regarding the donation of their organs and/or tissues after death. This attribute reflects a person’s legally or administratively recognized donor decision, not medical suitability or clinical screening.  It records consent status, not medical data.  May be known as Tissue donor. | structure | many |
| Dates | Dates for Physiological Information define the time period during which a specific physiological measurement or observation is valid, active, or considered accurate for operational or analytical use. Because physiological attributes (e.g., heart rate, oxygen saturation, resting blood pressure, metabolic rate) can change frequently, these dates provide temporal context for correctness, safety, and interpretation.  The attribute set typically includes:  * measurement\_date — when the physiological value was captured * effective\_from — when the value first becomes valid for use * effective\_to — when it stops being valid (nullable if still active)  These are per‑attribute timestamps, not global to the person. | structure | many |

## Relationships

- [Biological Attributes Includes Physiological Information](../../relationships/69a4a0dbf751de507cd5b9d4/index.html) ← [Biological Attributes](../../entities/69a49610f751de507cd5766e/index.html)
