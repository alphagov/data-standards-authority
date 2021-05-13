---
title: Reference Architecture for Government Data and APIs
weight: 810
keywords: 'Reference Architecture'
identifier: DSA-001
name: ReferenceArchitecture
organisation: Data Standards Authority
status: Active
startDate: 2020-10-01
dateAdded: 2020-12-16
dateUpdated: 2020-12-16
---

## DRAFT A reference architecture for government data and APIs DRAFT


_This is a DRAFT document for discussion. This is not finalised. All aspects of this document are subject to change. Please leave comments on any aspect of it._


_Official_


_This document is a living document - it is expected to grow and evolve._


_The base assumption for this RA is that each system and service within government is interoperable. This RA doesn't go into detail on all levels but is intended as a high level guide to best practice._


[TOC]

## Context

The Data Standards Authority has been tasked with creating a general reference architecture for government to enable seamless exchange of data between departments.

This is to support operational and analytical processes.

This document does not define what systems to procure, or how to integrate them.


## Why have a Reference Architecture?

(Picture)

A reference architecture will bring understanding to the government business and technical estate by mapping and abstracting multiple solution architectures that have each been designed and implemented to fit a particular problem space. 


### How does this help 

Ministers and suppliers can use a government reference architecture to bring understanding to their strategies, visions and objectives when working on systems. A reference architecture can: 



*   reduce IT spend by increasing reusability, functionality and availability
*   reduce technology lock-in by increasing the transparency of the government estate
*   reduce the cost of FoI requests by proactively publishing data, and making it easier to compile responses to requests
*   promote technical innovation across services by referencing new technologies
*   improve communication across government, particularly between senior stakeholders and practitioners, by joining the dots between them
*   improve standardisation efforts by bringing understanding to how different technical and data standards may fit together, and facilitating a ‘bottom up’ standards development process
*   move away from the document centric model of existing Government systems to a data centric model.

This is a _non-exhaustive_ document. This document outlines the basics of technology and culture. It cannot cover every non-technical subject like usability, accessibility, user needs, and security. It is expected that services will follow the Service Standard, and then the Spend Controls process will ensure that they have met its requirements.


## Reference Architecture Aims 

To improve the interoperability of data and systems, which will allow UK government departments to fulfil their function.

Government is made up of operating units, for example HMRC, GDS, DWP, DHSC, etc. Each operating unit has multiple operational systems, for example HR systems, correspondence systems, statistical systems. These operational systems can be internally facing, externally facing, or a mix of both.

Often the operational systems will be tightly coupled with the operating units. 

The reference architecture aims to ensure that



*   Every system can exchange data with each other system
*   Every system produces data in a standard format
*   Every system has an API and that API is documented
*   Every API uses a common authentication protocol
*   Every operating unit can share data with every other operating unit
*   Users outside of Government are able to access data - with appropriate controls
*   External operating units can re-use the software created to run the system
*   Every system and its interconnections have been documented

All systems must expose their data in an interoperable way.

Data should be gathered from core data sets.


## Common Applications 

We encourage re-use of existing software and components - even if they were developed outside of the organisation.  The decision to buy or build is left to the organisation, but must be in line with Spend Controls policy and must ensure data interoperability.

Organisations are expected to realise that their needs are not unique. It is very rare that they will be doing something original.  The first task of any technology project is to assess the existing software and services which are available.

Where possible, implementation of [Government-as-a-Platform (GaaP)](https://gds.blog.gov.uk/category/government-as-a-platform/) is expected. For example, no organisation should be rebuilding a payment system, or an email sending platform.

If a cross-Government solution does not yet exist, organisations must consult with other Government organisations to see if they have solved a similar issue. If so, organisations are expected to work with each other to develop a common solution.

Technology should be designed and developed as though it were going to eventually be part of Government-as-a-Platform. This means documented APIs, service level agreements, and a plan to scale with demand.

Technology development must happen "in the open". All code must be open source, and licenced for other operating units to re-use. Where technology is developed with a 3rd party, care should be taken that the IP (Intellectual Property) rights are understood. Code developed with public money should be made available to the public.


## Common Data 

We encourage the re-use of existing data sets. Organisations should be careful not to rebuild data sets which have been created by other organisations.

All data should use approved open data standards and include metadata to allow for reuse and discovery.


## Common Model 

A "Service" is the user-facing interface into government. For example "Request a Driving Licence" or "Tell us once about a death".

A "System" is the component which makes up a Service. For example, the database storing the information, the login system, or an analytics platform.

A well-designed Service is designed to ingest, store, manipulate, and produce _data_. It is the product of multiple interoperable systems.

The Reference Architecture is a way to break free of the _document centric_ model of Government systems.  A document centric model is the equivalent of a filing cabinet; documents come in as unstructured data, they are manipulated, and then stored as discrete documents inside a system.

A _data centric_ model takes in structured data from an API, it records events and transactions as data points, and stores structured data. When unstructured data comes in, it is transformed into structured data as soon as possible. When data is requested, it should be provided as structured data through an API.  This may then be transformed into unstructured data (for example a posted letter).

The ultimate aim is to move to an Architecture which supports Open APIs for every transaction. Individual systems are to be considered only in how they interact with other systems and services.  In this sense, the Reference Architecture is concerned with the interconnections between systems - whether they are internal to the organisation or external.

(DRAFT IMAGE)

Zooming in, this is what the Reference Architecture requires:


*   A service which can scale with demand (Cloud)
*   Access provided via a common authentication standard (OAuth)
*   Producing data in an open format (Open Standards)
*   Accessed via an API (REST or GraphQL)
*   Documented in OpenAPI v3
*   With the ability for external users to access the system


### Scale 


*   [Government Cloud First policy - GOV.UK](https://www.gov.uk/guidance/government-cloud-first-policy) 


### Common Authentication 


*   [OAuth](https://oauth.net/)
    *   See also [Our approach to API authentication - Technology in government](https://technology.blog.gov.uk/2016/11/14/our-approach-to-authentication/) 


### Common Formats and Data Standards 


*   [Open standards for government - GOV.UK](https://www.gov.uk/government/publications/open-standards-for-government) 
*   [JSON](https://www.json.org/json-en.html) 
*   Any new data formats should be in line with the [Open Standards Principles](https://www.gov.uk/government/publications/open-standards-principles) 


### API First 


*   [About APIs](https://www.digital.govt.nz/standards-and-guidance/technology-and-architecture/application-programming-interfaces-apis/about-apis/) - digital.gov.nz 


### Common Documentation 


*   [OpenAPI Specification - Version 3.0.3](https://swagger.io/specification/) 
*   [Describing RESTful APIs with OpenAPI 3 - GOV.UK](https://www.gov.uk/government/publications/recommended-open-standards-for-government/describing-restful-apis-with-openapi-3) 


## Conformance Levels 

We understand that not every department will be able to move into full conformance straight away.

We provide a matrix of conformance by which organisations can assess their maturity.


### Conformance Level 1 

This is the base level of conformance. It shows that a department understands their IT estate and how it connects within and without itself.


### Conformance Level 2 

The starting assumption is that all systems hold data, and that data is accessed via a structured API.  It is important that the API is well designed and takes into account user needs.

There should be a minimal number of systems which require manual data entry. Manual data entry should be reserved for collection of information that is completely new to government and cannot be collected any other way

The majority of systems will store or produce data in an open format.


### Conformance Level 3


*   All systems and their interconnects are documented.
*   Basic API for the majority of systems
*   Open standards for the majority of systems
*   Public documentation
*   OAuth connections
*   OpenAPI Documentation - published to API catalogue

At this stage, the organisation will publish their documentation and actively encourage external users to connect with them. Interfaces will be documented, and OAuth will be the only method of connection.


### Conformance Matrix 

The above, split out into a matrix


<table>
  <tr>
   <td>
   </td>
   <td>Document Existing Systems
   </td>
   <td>API
   </td>
   <td>OAuth
   </td>
   <td>Open Standards
   </td>
  </tr>
  <tr>
   <td>Level 1
   </td>
   <td>Some documentation of systems
   </td>
   <td>Some APIs
   </td>
   <td>Internal OAuth
   </td>
   <td>Some systems use open standards.
   </td>
  </tr>
  <tr>
   <td>Level 2
   </td>
   <td>All systems are documented
   </td>
   <td>Basic API for the majority of systems
   </td>
   <td>Cross Government OAuth
   </td>
   <td>All systems use open standards
   </td>
  </tr>
  <tr>
   <td>Level 3
   </td>
   <td>Documentation is automated and self-updating
   </td>
   <td>OpenAPI Documentation.
<p>
Published to API catalogue
   </td>
   <td>OAuth open to those outside government
   </td>
   <td>Working with Standards Development Organisations to define standards.
   </td>
  </tr>
</table>



## Appendix 

### Common technical architectures  

These include: 



*   Open Source Policy
*   Documentation
*   Web Services
*   REST APIs
*   SOAP APIs
*   Event driven architectures (paginated) 
*   Event driven architectures (non paginated) 
*   Streaming
*   Cloud 
*   Mobile 


### Artefacts 

These are the guiding documents to help the government form integrated digital services and strategies.


#### All of government 

These include: 



*   The Service Manual 
*   The Technology Code of Practice 
*   The Open Standards Principles 
*   The Design System 
*   The Government Transformation Strategy 


#### Across sector

These include: 



*   The HMRC API Strategy 
*   The MOD API Strategy
*   [the NZ government](https://www.dragon1.com/downloads/government-enterprise-architecture-for-new-zealand-v3.1.pdf)
*   [The BP Trends report](https://www.bptrends.com/next-generation-reference-architecture-for-connected-government/#:~:text=Government%20Reference%20Architecture%20(GRA)%20provides,the%20solution%20for%20various%20problems.)


### Glossary


*   API
*   JSON
*   OAuth
*   GDS
*   Spend Controls
*   Source Code
*   Open Source
*   Freedom of Information Act


## The Culture of the Organisation 

The overarching philosophy of the Reference Architecture is to drive a culture of openness and inclusivity within the organisation.



*   A culture which _accepts_ that working in the open is a difficult, but necessary, part of delivering excellent services.
*   A culture which _wants_ services to be interoperable with systems outside of the organisation, and outside of government.
*   A culture which _delights_ in sharing best practices - and learning from other organisations.
*   A culture which _thrives_ on receiving feedback from the public - and making changes based on it.
*   A culture which _demands_ diversity - of people and technology - and works towards a fairer and more inclusive organisation.

The purpose of this Reference Architecture is to set out the minimum technical requirements needed for an organisation to meet this cultural change.

This culture can be summed up by the phrase "Make things open; it makes things better."

Read more at:



*   **[Government Design Principles - GOV.UK](https://www.gov.uk/guidance/government-design-principles)**
*   **[Data Ethics Framework - GOV.UK](https://www.gov.uk/government/publications/data-ethics-framework) **


## 


## What is a reference architecture? 

In working to develop a “Reference Architecture” there are many views of what that can actually be. The diagram shows the multiple layers (or dimensions) that constitute a Reference Architecture;



*   Vision/Strategy - the purpose of our organisation (UK Govt) and the vision and strategy that states its purpose and its intended method of interoperability.
*   Capability Reference - This encapsulates all the capabilities and services that are required to fulfil the vision and strategy. These are broadly split into services (things we do) and admin/corporate areas (things we do to support our services - HR, Finance, Tech, Supplies, Procurement, etc)
*   Data Architecture - What is the data that supports what we do, how is it organised (data model), how do we define it (metadata management), what our core data elements are (Core Data Management), what reference data we use and how common it is (Reference Data Management), what external data do we use and what (aggregated ?) data do we expose to the outside world
*   Application Architecture - what systems do we use to build and perform the services above, what is the level of interoperability that is needed and performed
*   Integration Architecture - how does data move between the systems to support the services above? Have we identified our master data elements and are taking them from the correct place
*   Security Architecture - How do we protect the data we use given all the legal & regulatory measures we need to comply with
*   Network/Infrastructure - displays the massive wiring and hardware diagram that supports everything above
