---
title: APIM - 05 - Discovery
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

## Discovery


_This is a DRAFT document for discussion. This is not finalised. All aspects of this document are subject to change. Please leave comments on any aspect of it._

#### Contents:
- [01 - Introduction](APIM-Introduction.html)
- [02 - Design](APIM-Design.html)
- [03 - Deployment](APIM-Deployment.html)
- [04 - Management](APIM-Management.html)
- [05 - Discovery](APIM-Discovery.html)
- [06 - Retirement](APIM-Retirement.html)

## Discovery

Making your API easy to find is a critical part of the API management process. If people can’t find your APIs, they can’t use them. You can use an API catalogue to help users discover your APIs, find out what they do and how to use them.

### Decouple your API discovery layer from your dev portal and API gateway
Development teams often rely solely on a developer portal to make their APIs discoverable. Most API management tooling includes modules for the API gateway, the developer portal, and an API catalogue.

However, there are cases where it may not make sense for an API to sit on the gateway or the developer portal, but which should still be discoverable in a catalogue. This might be because the API is still in experimental stages, doesn’t meet standards, or because the team is not ready to hand over management of the API.

It is then a good idea to have the catalogue as a separate entity, so it can make all APIs discoverable without being restricted to those which meet certain criteria.

This helps:

* promote an environment where innovation can happen in the open
* avoids teams developing in silos to get around rules
* helps transparency and reduces duplication of effort

### Consider who will be looking to find APIs in your organisation
Most organisations have three levels of access for their APIs:

* Private - internal and kept entirely within the organisation
* Partner - shared externally with a limited set of trusted users/partners
* Public - open to external users either directly or through a self-service sign up platform

Consider how best to enable discovery for each group. You could do this with separate catalogues, but you should consider the cost and effort it would require to maintain these. You can also use access control to restrict visibility of APIs, or details of the APIs, to registered users at different levels of authentication.

You should aim to expose as much detail to all users as possible. Even for sensitive datasets you should expose basic details of an API with information about how to get access. This helps developers understand the value of the API and start interacting with it while they wait for access approval.

You should consult your internal security teams about what level of exposure is acceptable for each API. You might also find it helpful to review the metadata model available at the [government API catalogue](https://www.api.gov.uk/). This provides a basic discovery framework that does not increase the vulnerability of published resources.

### Link your catalogue to the Government API Catalogue
Your internal catalogue should update the [government API catalogue](https://www.api.gov.uk/), either programmatically or with manual submissions. This catalogue is a centralised directory for discovery of government APIs, and any external APIs (whether inter-departmental, restricted or public) should be listed on there.

Contact the API Catalogue team at [api-catalogue@digital.cabinet-office.gov.uk](mailto:api-catalogue@digital.cabinet-office.gov.uk) for more information and help with adding your APIs or connecting your internal catalogue.




#### Contents:
- [01 - Introduction](APIM-Introduction.html)
- [02 - Design](APIM-Design.html)
- [03 - Deployment](APIM-Deployment.html)
- [04 - Management](APIM-Management.html)
- [05 - Discovery](APIM-Discovery.html)
- [06 - Retirement](APIM-Retirement.html)


[Next](APIM-Retirement.html)
