---
title: APIM - 04 - Management
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

## Management tools (API Gateway)


_This is a DRAFT document for discussion. This is not finalised. All aspects of this document are subject to change. Please leave comments on any aspect of it._

#### Contents:
- [01 - Introduction](APIM-Introduction.html)
- [02 - Design](APIM-Design.html)
- [03 - Deployment](APIM-Deployment.html)
- [04 - Management](APIM-Management.html)
- [05 - Discovery](APIM-Discovery.html)
- [06 - Retirement](APIM-Retirement.html)


The day to day operations of API service management are usually handled by an API gateway. Generally, an API gateway service acts as a proxy for APIs, and allows commodity services (for example, network access, security and authentication, throttling and rate limiting, logging and monitoring) to be provisioned centrally, for all the APIs using the service.
  

Many organisations don’t put an API gateway into production until they have several APIs in use. However, you should consider implementing one at the very beginning of an API programme. 
  

Doing this will allow you to:

-   standardise how APIs use central services such as network access, security and authentication, throttling and rate limiting, logging and monitoring
    
-   lower developer costs and reduce time to value, since you won’t need to rebuild these services for each new API
    
-   mandate minimum standards of security, access control and monitoring, while providing an easy way for developers to meet them
    

While adding an API gateway does mean you will need to deploy and manage another service, it reduces complexity of the API estate and introduces a consistent front end for services.


There are many different API gateway products available, both open source and proprietary. They will often include elements for a dev portal and/or a catalogue. You can read more about these further in this guidance. 


At a minimum, an API gateway should provide:

-   user and application authentication
   
-   rate limiting and throttling inbound requests
    
-   logging and reporting


#### Contents:
- [01 - Introduction](APIM-Introduction.html)
- [02 - Design](APIM-Design.html)
- [03 - Deployment](APIM-Deployment.html)
- [04 - Management](APIM-Management.html)
- [05 - Discovery](APIM-Discovery.html)
- [06 - Retirement](APIM-Retirement.html)


[Next](APIM-Discovery.html)
