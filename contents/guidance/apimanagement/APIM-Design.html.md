---
title: APIM - 02 - Design
weight: 832
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

## Design


_This is a DRAFT document for discussion. This is not finalised. All aspects of this document are subject to change. Please leave comments on any aspect of it._

#### Contents:
- [01 - Introduction](APIM-Introduction.html)
- [02 - Design](APIM-Design.html)
- [03 - Deployment](APIM-Deployment.html)
- [04 - Management](APIM-Management.html)
- [05 - Discovery](APIM-Discovery.html)
- [06 - Retirement](APIM-Retirement.html)


Establishing design guidance helps maintain consistency across your API estate. It is difficult to manage APIs that are not consistent, so the more your APIs follow the same design principles and practices, the easier it will be to manage them at scale.

The level of guidance you provide will depend on the size and structure of your organisation. For example, guidance would be very different for a small, homogeneous environment where every aspect of API design is mandated, and a large, federated organisation where many different technologies and approaches are already in use.

### Review and challenge assumptions
Organisations often develop their API strategy based on the first few APIs they built, where choices that teams made in response to specific problems are then mandated across very different domains. If you have an existing API strategy in place, it is worthwhile to think about what assumptions in your API programme might be legacy.

User research can help you challenge these assumptions and define needs. Some questions you might seek to answer include:

- What technologies are in use, or might be in the future?
- What are the different levels of maturity of development teams in the organisation?
- Are the APIs produced primarily internal or external facing, or a mixture?
- What SLAs should APIs meet - do you have different SLA tiers which are appropriate for different use cases?


### Bring developers into the design process
API design guidance reduces friction by providing a framework within which a developer can start to work.

It’s important to provide explanations for design choices. Being open with the decisions behind the guidance increases developer trust and helps get them on board with the process.

### Use standards

Technology standards like OpenAPI can help take a lot of the guesswork out of software decisions, and can also lend credibility to your strategy as they reflect widely accepted ways of doing things.

It is helpful to specify use cases for different API standards. As an example, you might require using REST for microservices and GraphQL for more data intensive processes.

You should also consider what standards make sense for specific technical details. For example, how to use HTTP functionality, or requiring that all APIs follow a consistent approach to versioning.

### Make guidance clear and easily accessible
Setting out decisions like these in a central place helps development teams get started on projects more quickly and with less effort. Some organisations simply keep these guidelines on a central document store or git repository, while some have dedicated tooling. Various tools are available to store and share API specifications, many of which have an open source version which allows you to try them out.

Tooling like this can provide functionality including:

- specification support
- real time validation
- auto-completion
- auto generated documentation

These tools often form part of an API Management suite, which also includes a developer hub and an API gateway, but can also be used as standalone design or governance modules. 

#### Contents:
- [01 - Introduction](APIM-Introduction.html)
- [02 - Design](APIM-Design.html)
- [03 - Deployment](APIM-Deployment.html)
- [04 - Management](APIM-Management.html)
- [05 - Discovery](APIM-Discovery.html)
- [06 - Retirement](APIM-Retirement.html)


[Next](APIM-Deployment.html)
