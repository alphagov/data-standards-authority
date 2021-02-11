# A reference architecture for government data and APIs


# Who should use this guidance?

The [Data Standards Authority](https://www.gov.uk/government/groups/data-standards-authority) has created a general reference architecture for government to enable seamless exchange of data.

This guidance is for people who are creating technology architectures to support operational and analytical processes. It shares best practice for creating a technology base which supports modern use of data and APIs.

This document does not define what systems to procure, or how to integrate them.


## What is a reference architecture?

A reference architecture helps government operating units understand their technical estate. It maps and abstracts multiple solution architectures that have each been designed and implemented to fit a particular problem space.

This reference architecture is a generic document that is designed to help you build your data and API architecture.


## How does this help?

This reference architecture can: 



*   reduce IT spend by increasing reusability, functionality, and availability
*   reduce technology lock-in by increasing the interoperability of the government estate
*   reduce the cost of FOIA (Freedom of Information Act) requests by proactively publishing data, and making it easier to compile responses to requests
*   promote technical innovation across services by referencing new technologies
*   improve communication across government, particularly between senior stakeholders and practitioners, by making it easier to share data between them
*   improve standardisation efforts by bringing understanding to how different technical and data standards fit together
*   encourage government operational units to adopt existing open standards, and engage with their development
*   move away from the document-centric model of existing government systems to a data-centric model

This document outlines the basics of technology and culture. Following it will allow services to meet the requirements of the [Service Standard](https://www.gov.uk/service-manual/service-standard) and the [Spend Controls process](https://www.gov.uk/guidance/digital-and-technology-spend-controls-version-5), but is not a replacement for them.


# Reference architecture aims

This reference architecture aims to improve the interoperability of data and systems across government.

Government is made up of operating units, for example HMRC, GDS, DWP and DHSC. Each operating unit has multiple operational systems, for example HR systems, correspondence systems, or statistical systems. These operational systems may be used internally by each operating unit, externally by other operating units, open to the public, or a mixture of all.

Often the operational systems will be tightly integrated with the operating units. There are not many common platforms which are shared by multiple operating units.

The reference architecture aims to ensure that:



*   every system can exchange data with every other system
*   every system produces data in an [open standard](https://www.gov.uk/government/publications/open-standards-principles/open-standards-principles) format
*   every system has an API, and that API is documented according to [the OpenAPI specification](https://www.gov.uk/government/publications/recommended-open-standards-for-government/describing-restful-apis-with-openapi-3)
*   every API uses a [common authentication protocol](https://www.gov.uk/guidance/gds-api-technical-and-data-standards#to-provide-application-level-authorisation)
*   when appropriate, every operating unit can share data with every other operating unit
*   users outside of government are able to access relevant data via an [appropriately authenticated API](https://www.gov.uk/guidance/gds-api-technical-and-data-standards#when-to-authenticate-your-api)
*   external operating units can reuse any software which has been created
*   every system and its connections to every other system are documented
*   data should be gathered from core data sets and should not [replicate core data](https://www.gov.uk/guidance/manage-your-data-for-access-and-reuse)


# Develop applications for reuse

Operating units rarely have unique needs. The first task of any technology project is to assess the existing software and services which already exist.

You should reuse existing software and components - even if they were developed outside your operating unit. The decision to buy or build is your operating unit's individual decision, but must follow the [Spend Controls process](https://www.gov.uk/guidance/digital-and-technology-spend-controls-version-5) and must ensure data interoperability.

Where possible, implementation of [Government as a Platform (GaaP)](https://gds.blog.gov.uk/category/government-as-a-platform/) is expected. For example, no operating unit should be building a new payment system - they should use [GOV.UK Pay](https://www.payments.service.gov.uk/).

If a cross-government solution does not yet exist, you must consult with other operating units to see if they have solved a similar issue. If so, you are expected to work with each other to develop a common solution.

Technology should be designed and developed with the expectation that it could become part of Government as a Platform in the future. This means following [GDS Service Manual guidelines](https://www.gov.uk/service-manual/service-standard/point-14-operate-a-reliable-service) on operating a reliable and scalable platform.

Technology development must happen [in the open](https://gds.blog.gov.uk/2017/09/04/the-benefits-of-coding-in-the-open/). All code must be open source, and licenced for other operating units to reuse. Where technology is developed with a third party, the IP (intellectual property) rights must be understood.

Code developed with public money should be made available to the public as open source.


## Reuse common data

Wherever possible you should reuse existing data sets. Operating units should be careful not to rebuild data sets which already exist.

All data should use approved open data standards and [include metadata to allow for reuse](https://www.gov.uk/government/publications/recommended-open-standards-for-government/using-metadata-to-describe-csv-data).


# Follow a data-centric model for services and systems

The reference architecture is a way to break free from the document-centric model of government systems.

A "service" is the method by which users interact with government, for example [Renew your driving licence](https://www.gov.uk/renew-driving-licence). It is a group of multiple, interoperable systems that ingests, stores, manipulates, and produces data. 

A "system" is one of the components which makes up a service. For example, the database storing the information, the login system, or an analytics platform.

In a document-centric model, data arrives as unstructured documents, is manipulated, and is then stored as individual documents inside a system. This process can be hard to automate, difficult to audit, and risks being non-deterministic.

A data-centric model takes in data, creates a record of all events and transactions relating to that data, then stores both the data and its record in a database. This allows for easier manipulation, retrieval, and consistency of data.

When unstructured data comes into a data-centric service, it should be transformed into structured data as soon as possible.

When data is requested, it must be provided as structured data through an API.  This can then be transformed into unstructured data, for example customer data being turned into a postable paper document.


# Develop your architecture using a maturity model

Not every department will be able to follow the full expectations of the reference architecture immediately. It is useful to follow a maturity model to develop your architecture in stages.

At a minimum, the reference architecture requires:



*   a service which can scale with demand using [cloud technology](https://www.gov.uk/guidance/government-cloud-first-policy)
*   access provided via a common authentication standard, such as [OAuth](https://technology.blog.gov.uk/2016/11/14/our-approach-to-authentication/)
*   that data is produced as an [open standards](https://www.gov.uk/government/publications/open-standards-principles)
*   access to data via a documented API
*   REST APIs to be documented in [OpenAPI 3](https://www.gov.uk/government/publications/recommended-open-standards-for-government/describing-restful-apis-with-openapi-3)
*   the ability for external users to access the system where appropriate

Operating units can assess and develop the maturity of their architecture by following this model:


<table>
  <tr>
   <td>
   </td>
   <td><strong>Documenting existing systems</strong>
   </td>
   <td><strong>API</strong>
   </td>
   <td><strong>OAuth</strong>
   </td>
   <td><strong>Open standards</strong>
   </td>
   <td><strong>Data</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Maturity Level 1</strong>
   </td>
   <td>Some documentation of systems
   </td>
   <td>Few APIs
   </td>
   <td>OAuth for internal users
   </td>
   <td>Some systems use open standards
   </td>
   <td>Data mostly entered manually
   </td>
  </tr>
  <tr>
   <td><strong>Maturity Level 2</strong>
   </td>
   <td>All systems are documented
   </td>
   <td>APIs for the majority of systems
   </td>
   <td>Cross- government OAuth
   </td>
   <td>All systems use open standards
   </td>
   <td>Manual data entry only used for collection of information that cannot be collected any other way
   </td>
  </tr>
  <tr>
   <td><strong>Maturity Level 3</strong>
   </td>
   <td>Documentation is automated and self-updating
   </td>
   <td>OpenAPI documentation
<p>
Published to <a href="https://www.api.gov.uk/">API catalogue</a>
   </td>
   <td>OAuth open to those outside government
   </td>
   <td>Working with standards development organisations to define standards
   </td>
   <td>Produces high quality reference data for other systems
   </td>
  </tr>
</table>



# Drive organisational culture through reference architecture

The reference architecture promotes a culture of openness and inclusivity within each operational unit. It aims to transform our culture into one which:



*   accepts that working in the open is a difficult, but necessary, part of delivering excellent services
*   wants services to be interoperable with systems outside of the operational unit, and outside of government
*   delights in sharing best practices - and learning from others
*   thrives on receiving feedback from the public - and making changes based on it
*   demands diversity - of both people and technology - and works towards a fairer and more inclusive organisation

This culture can be summed up by the phrase "[Make things open; it makes things better](https://www.gov.uk/guidance/government-design-principles#do-the-hard-work-to-make-it-simple)".
