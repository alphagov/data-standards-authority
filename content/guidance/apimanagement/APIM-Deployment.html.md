---
title: APIM - 03 - Deployment
weight: 833
keywords: 'API Management'
identifier: DSA-003
name: APIManagement
organisation: Data Standards Authority
author_email: api-programme@digital.cabinet-office.gov.uk
status: Draft
startDate: 2021-03-23
dateAdded: 2021-03-23
dateUpdated: 2021-04-28
---

## Deployment


_This is a DRAFT document for discussion. This is not finalised. All aspects of this document are subject to change. Please leave comments on any aspect of it._

#### Contents:
- [01 - Introduction](APIM-Introduction.html)
- [02 - Design](APIM-Design.html)
- [03 - Deployment](APIM-Deployment.html)
- [04 - Management](APIM-Management.html)
- [05 - Discovery](APIM-Discovery.html)
- [06 - Retirement](APIM-Retirement.html)


Deploying your API involves more than just pushing code. There are a number of things you should put in place to support the publishing process. Assurance and testing processes ensure APIs meet requirements and function properly, and developer resources help consumers through the lifecycle of their integration.

### Assurance and assessment

Assurance is part of governance, and is the process of making sure that APIs meet various organisational standards. For example, an assurance process will help teams make sure they are building APIs to follow the design guidelines of your organisation.

Assurance is likely to be a review session, and might include assessment on API:

* resourcing
* user journeys
* middleware
* domain modelling
* publishing

Your assurance assessment programme should make sense for the teams who need to go through it. If development teams find the assurance process too rigid, they might try to avoid it, which will weaken your organisation’s governance model. Think about how you can make governance as light touch as possible, and how you can make it a positive experience for product teams. If review sessions have good outcomes for teams and provide them with useful feedback, other teams are more likely to submit to it. As a result your governance model will be more successfully embedded into organisational culture.

### Testing

Testing is the process of making sure the APIs function properly, and is more likely to be an automatic process which validates the code. Testing should be an ongoing process, and regular validation of the API should be part of a monitoring scheme.

Usually, testing is done by an automated tool against the specification, sometimes known as the contract. Contract testing in its simplest form includes:

* checking the specification against internal policies to make sure that APIs submitted to the developer portal are compliant with internal standards
* checking the API to make sure its responses match the specification and that deployed APIs are behaving correctly in production

### Developer portal

A developer portal, also sometimes called a developer hub, is where developers can access everything they need to set up and manage their integration with your API. This usually includes:

* documentation for your API
* developer authorisation
* self service tools for things like renewing API keys and changing their password
* a test environment - for example a mock API, a ‘sandbox’ and test users
* issue reporting and ticket support

You can also use your developer portal to gather internal metrics about your API programme. For example, you might want to measure how quickly developers are able to set up a test version of an API. This is sometimes known as “time to live” or “time to 200” and is a useful metric to measure how easy your API is to integrate. It can also help you identify where there might be pain points for users.

### Documentation

Your API documentation is the starting point for developers looking to use your API.

You can use an API specification to generate and auto-update reference documentation for your API as you build and iterate it. However, do not rely solely on auto-generated documentation as it’s important to also include conceptual or practical documentation to provide developers with more context.

You should work with a [technical writer](https://www.gov.uk/guidance/technical-writer) from the very start of your project. If you don’t have technical writing resources in your organisation, you can reach out to the [cross-government technical writing community](https://www.gov.uk/service-manual/communities/technical-writing-community).

You can use the [GDS Technical Documentation Template](https://tdt-documentation.london.cloudapps.digital/#technical-documentation-template) to generate accessible documentation pages from simple Markdown files. It’s mainly used for standalone documentations sites (for example [GOV.UK Pay’s API documentation](https://docs.payments.service.gov.uk/#gov-uk-pay-technical-documentation)). The Tech Docs Template is a Middleman template, so if you’re using an API management tool, you might be able to build the template into your generated documentation..

Read the guidance on [how to document APIs](https://www.gov.uk/guidance/how-to-document-apis) and [writing API reference documentation](https://www.gov.uk/guidance/writing-api-reference-documentation).


#### Contents:
- [01 - Introduction](APIM-Introduction.html)
- [02 - Design](APIM-Design.html)
- [03 - Deployment](APIM-Deployment.html)
- [04 - Management](APIM-Management.html)
- [05 - Discovery](APIM-Discovery.html)
- [06 - Retirement](APIM-Retirement.html)


[Next](APIM-Management.html)
