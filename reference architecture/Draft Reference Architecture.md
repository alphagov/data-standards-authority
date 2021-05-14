# Develop a data and API estate using a reference architecture

This guidance is a reference architecture. It will help you build your IT infrastructure so it supports operational and analytical processes that focus on using data and APIs. It suggests best practices and a maturity model.

Developing your government organisation’s technical estate can help you to:

*   reduce your IT spend by increasing functionality, reusability and availability of your technology
*   reduce government technology lock-in by increasing your organisation’s interoperability with other government technology
*   reduce the time and money you spend on Freedom of Information requests by proactively publishing data
*   promote technical innovation across government services by using new technologies
*   improve the way you communicate across government, by making it easier to share data between organisations
*   standardise your technology, by helping you understand how different technical and data standards fit together
*   encourage you to adopt existing open standards, and engage with the standards’ development
*   move away from document-based processes and systems to those based on standardised data, as [suggested by the National Data Strategy](https://www.gov.uk/government/publications/uk-national-data-strategy/national-data-strategy#open-data)
*   encourage cultural change in your organisation by building services that are interoperable with others both inside and outside government
*   respond to feedback from users and resolve identified problems

By following this reference architecture, your services will meet the main requirements of the [Service Standard](https://www.gov.uk/service-manual/service-standard) and the [spend controls process](https://www.gov.uk/guidance/digital-and-technology-spend-controls-version-5). This does not replace the spend controls process, or the need to go through a [service assessment](https://www.gov.uk/service-manual/service-assessments).


## Plan your architecture using a maturity model

You will need to assess the maturity of your reference architecture.

At a minimum, the architecture you build should:

*   offer a service which can scale with demand using [cloud technology](https://www.gov.uk/guidance/government-cloud-first-policy)
*   provide access [through a common authentication standard](https://docs.publishing.service.gov.uk/manual/add-authentication-to-an-application.html), such as [OAuth](https://oauth.net/2/)
*   produce data [using the Open Standards Principles](https://www.gov.uk/government/publications/open-standards-principles)
*   give users access to data using a documented API
*   use [OpenAPI 3](https://www.gov.uk/government/publications/recommended-open-standards-for-government/describing-restful-apis-with-openapi-3) to document REST APIs
*   let external users access the system where appropriate

This model is one way of assessing and developing the maturity of your architecture:

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
   <td><strong>Maturity level 1</strong>
   </td>
   <td>Your systems are not all documented
   </td>
   <td>Most of your systems do not support APIs
   </td>
   <td>The OAuth security protocol is available for users in your organisation
   </td>
   <td>Some of your systems use open standards
   </td>
   <td>Your organisation data is mostly entered manually
   </td>
  </tr>
  <tr>
   <td><strong>Maturity level 2</strong>
   </td>
   <td>Your systems are all documented
   </td>
   <td>The majority of your systems support APIs
   </td>
   <td>OAuth is available for cross- government users
   </td>
   <td>All of your systems use open standards
   </td>
   <td>Data is only entered manually to collect information that cannot be collected any other way
   </td>
  </tr>
  <tr>
   <td><strong>Maturity level 3</strong>
   </td>
   <td>Your documentation is automated and self-updating
   </td>
   <td>Your APIs are published to <a href="https://www.api.gov.uk/">API catalogue</a>
<p>
You have OpenAPI documentation
   </td>
   <td>OAuth is available for users outside government, as well as all users inside government
   </td>
   <td>You work with standards development organisations to define standards
   </td>
   <td>Your organisation produces high quality reference data for other systems
   </td>
  </tr>
</table>



## Build an architecture that promotes data exchange across government

Government organisations use different systems for different needs, for example HR, communications or statistical systems. Sometimes these can be unique to an organisation.

You should aim to build an architecture that makes it easier to exchange data with other government organisations. You can do this by making sure your:

*   system can exchange data with other systems by being as interoperable as possible
*   system produces data in an [open standard format](https://www.gov.uk/government/publications/open-standards-principles/open-standards-principles)
*   system has an API
*   API is documented according to [the OpenAPI specification](https://www.gov.uk/government/publications/recommended-open-standards-for-government/describing-restful-apis-with-openapi-3)
*   API uses a [common authentication protocol](https://www.gov.uk/guidance/gds-api-technical-and-data-standards#to-provide-application-level-authorisation)
*   systems documentation is up to date and clearly shows how they connect to other systems

You should also make sure:

*   users outside of government are able to access your data, where appropriate, using an [appropriately authenticated API](https://www.gov.uk/guidance/gds-api-technical-and-data-standards#when-to-authenticate-your-api)
*   external organisations can reuse software you create
*   data you use is gathered from core data sets and does not [replicate core data](https://www.gov.uk/guidance/manage-your-data-for-access-and-reuse)


### Reuse applications and common data

When building your architecture, you should [look for existing software and services](https://www.gov.uk/guidance/share-and-reuse-technology) which fit your needs, and reuse them. This includes those developed by other organisations.

Your organisation should decide whether to [buy or build](https://www.gov.uk/guidance/define-your-purchasing-strategy), but you must follow the [GDS spend controls process](https://www.gov.uk/guidance/digital-and-technology-spend-controls-version-5). You should make as much of your data as interoperable as possible by [following point 9 of the Technology Code of Practice](https://www.gov.uk/guidance/integrate-and-adapt-technology).

Where possible, you should make use of shared platforms such as [GOV.UK PaaS](https://www.cloud.service.gov.uk/), which can host your service in the government cloud. You can also use existing government platforms that carry out specific services. For example, instead of building a new payment system, you should use [GOV.UK Pay](https://www.payments.service.gov.uk/).

If a cross-government solution does not yet exist, you should consult with other teams to see if they have solved a similar issue and work together on developing a common solution.

You should design and develop technology with the expectation that it could become part of Government as a Platform in the future. This means following [GDS Service Manual guidelines](https://www.gov.uk/service-manual/service-standard/point-14-operate-a-reliable-service) on operating a reliable and scalable platform.

Technology development should [happen in the open](https://www.gov.uk/government/publications/open-source-guidance). Where appropriate, all your code should be open source, and licenced for other people to reuse. You should understand the intellectual property (IP) rights if you’re using technology developed by a third party. \


You should reuse existing datasets whenever possible. You should be careful not to rebuild datasets that already exist.

All data should use approved open data standards and[ include metadata to allow other people to reuse it](https://www.gov.uk/government/publications/recommended-open-standards-for-government/using-metadata-to-describe-csv-data).


### Follow a services and systems model based on data

You should aim for an approach to services and systems in your organisation based around data, and move towards an approach [based on standardised data](https://www.gov.uk/government/publications/uk-national-data-strategy/national-data-strategy).

A "service" is the method by which users interact with the government, for example [Renew your driving licence](https://www.gov.uk/renew-driving-licence). It is a group of multiple, interoperable systems that ingests, stores, manipulates, and produces data. 

A "system" is one of the components which makes up a service. For example, the database storing the information, the sign in system, or an analytics platform.

Your organisation should follow a model which transforms unstructured data into structured data as soon as possible when the data arrives.

This model should create a record of all events and transactions relating to that data, then store both the data and its record in a database. This allows for more consistent data that is easy to manipulate and retrieve. It also helps to [make sure that data is accessible and reusable](https://www.gov.uk/guidance/manage-your-data-for-access-and-reuse).

When your data is requested by other people, it must be provided as structured data through an API. [Read guidance about designing, building and running APIs](https://www.gov.uk/government/collections/api-design-guidance) to best suit your organisation’s needs.

Your data-based model can transform this into unstructured data, for example customer data being turned into a postable paper document.

[Read guidance on choosing tools and infrastructure](https://www.gov.uk/guidance/choose-tools-and-infrastructure-to-make-better-use-of-your-data) to make better use of data to help you choose software and standards to suit your organisation.
