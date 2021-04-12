---
title: API Management Guidance - 03 - Deployment
keywords: 'API Management'
identifier: DSA-003
name: APIManagement
organisation: Data Standards Authority
status: Draft
startDate: 2021-04-07
dateAdded: 2021-04-07
dateUpdated: 2021-04-07
---

## Deployment


_This is a DRAFT document for discussion. This is not finalised. All aspects of this document are subject to change. Please leave comments on any aspect of it._

#### Contents:
- [00 - Cover Page](index.html)
- [01 - Introduction](APIM-Introduction.html)
- [02 - Design](APIM-Design.html)
- [03 - Deployment](APIM-Deployment.html)
- *04 - Management*
- *05 - Discovery*
- *06 - Retirement*
- *07 - Other Considerations*


### Assurance, assessment and testing

Once a team is ready to release its API for external use, the next step is for the API to go through a process of assurance and testing. These are two separate processes, which can be performed individually and separately, but which complement each other.

Assurance is part of governance, and is the process of making sure that APIs meet various organisational standards. For example, an assurance process will help teams make sure they are building APIs to follow the design guidelines of your organisation.

Assurance is likely to be a review session, and might include assessment on API:

* resourcing
* user journeys
* middleware
* domain modelling
* publishing

Your assurance assessment programme should make sense for the teams who need to go through it. If development teams find the assurance process too rigid, they might try to avoid it, which will weaken your organisation’s governance model. Think about how you can make governance as light touch as possible, and how you can make it a positive experience for product teams. If review sessions have good outcomes for teams and provide them with useful feedback, other teams are more likely to submit to it. As a result your governance model will be more successfully embedded into organisational culture.

Testing is the process of making sure the APIs function properly, and is more likely to be an automatic process which validates the code. Testing should also be an ongoing process, and regular validation of the API should be part of a monitoring scheme.

### Tools to validate APIs
There are a number of tools which you can use to validate your API code.


### Developer portal

A developer portal, also sometimes called a developer hub, is where developers can access everything they need to set up and manage their integration with your API. This usually includes:

* documentation for your API
* software development kits (SDKs)
* developer authorisation
* self service tools for things like renewing API keys and changing their password
* a test environment - for example a mock API, a ‘sandbox’ and test users
* issue reporting and ticket support

You can also use your developer portal to gather internal metrics about your API programme, for example how quickly developers are able to set up a test version of an API. This is sometimes known as “time to live” or “time to 200” and is a useful metric to measure how easy your API is to integrate. It can also help you identify where there might be pain points for users.

### Documentation

As well as enabling automatic validation and testing of your APIs, another benefit of mandating a standard specification for your organisation’s APIs is that API specs can be used to generate and auto-update documentation as the API is stood up and changes over time. This should form the basis of documentation held on the developer hub.

As much as possible the developer should be able to start building for the API while they are waiting to be formally granted access to the production API.

Automatically generated documentation is great - it shows that the API is properly specified and gives the developer reassurance that they are working with accurate information. But you should consider giving more resources, especially for your most commonly used APIs. Tutorials and code examples round out the developer experience and improve time to live.

Generating and keeping these up to date is another overhead, though, and should be factored into your thinking about how much resource to commit to the developer portal. Documentation that is auto-generated from a spec can quickly get away from static tutorials, so the latter need to be regularly reviewed.

A technical writer can help make sure your API documentation is well-structured and easy to understand. If you don’t have technical writing resources in your organisation, you should encourage whoever is working on your documentation to follow some basic principles for good writing.


*Next - Management*
