## Choose an API management tool 

_This is a DRAFT document for discussion. This is not finalised. All aspects of this document are subject to change. Please leave comments on any aspect of it._

#### Contents:
- [00 - Cover Page](index.html)
- [01 - Introduction](APIM-Introduction.html)
- [02 - Design](APIM-Design.html)
- [03 - Deployment](APIM-Deployment.html)
- [04 - Management](APIM-Management.html)
- [05 - Discovery](APIM-Discovery.html)
- [06 - Retirement](APIM-Retirement.html)
- [07 - Other Considerations](APIM-OtherConsiderations.html)


### API management tools help reduce development overhead and time to deployment by standardising design, monitoring, security and other aspects of the API lifecycle.

Good API governance comes from good API management, from design to deprecation.

If you build or manage any number of APIs, it’s best practice to have API management in place. This guidance will outline some areas you should consider when making decisions about how to manage APIs in your team or organisation. 



### Build foundations early
If you have any APIs that need access management, monitoring or documentation, you should at the very least use an API gateway. Even a single API will benefit from the standardised tools that an API gateway provides, by not having to develop and deploy those elements of functionality. If you later build more APIs, having an API gateway in place already will mean you don’t have to build those tools again, reducing duplication of effort for future teams.

There will be cases where your current ecosystem doesn’t fit with this model, perhaps because you already have APIs in production which have their own security or monitoring, or because the APIs have been developed using disparate methods and technologies, in which case you should think about how you can put in place standardised patterns. This is about processes and governance that teams will use to build and deploy APIs, rather than the specific technology they use. As an example, you should consider how prescriptive you want your publishing pipeline to be. You might decide to have strict rules only for certain things like security, while allowing other areas to be more flexible. 

Keep the future in mind 
When putting together your API strategy, it’s important to consider what your organisation’s future needs are likely to be, not just think about the first few APIs. 

Maintain a high level view of your API ecosystem. Good API management provides a way to judge the maturity of an individual API compared to others in the estate, and allows you to determine how much resource needs to be invested in it. APIs at different stages of their lifecycle require different levels of investment - a coherent strategy allows you to identify these needs and meet them.

### Meet user needs
You should also think how your decisions might affect user behaviour. For example, you might decide that only APIs which have been through the process of assurance and testing will be visible in your catalogue. This might make teams reluctant to try new solutions that don’t fit the pattern, which could discourage innovation. Teams who aren’t ready to standardise or hand off management might simply not use it, and instead deploy APIs in an ad-hoc way.

User research can help you gain insight on how teams are producing and consuming APIs, or what technologies they are using or considering using.

A robust API management process will help build credibility and trust with users of your APIs. It’s important to demonstrate that your APIs are well designed and well supported. For example, being clear about how you retire APIs will reassure developers that they will not suddenly lose access to an API without notice. 

### Define roles 
Depending on the size and structure of your organisation, you might have several teams involved in building and maintaining APIs. Your API management strategy can help set out things like:

who owns different parts of the API lifecycle
where ownership of a particular service lies
how ownership changes as an API goes into service
For example, it is common for a central team to run the API Gateway, and therefore have control over service levels and capacity. How does that responsibility interact with the design and delivery responsibilities of an API owner, for example around versioning? Having a clear structure for escalating issues will save a lot of time and energy in the future. Support from senior management or stakeholders can help formalise organisational structures and policies. 

### What API Management tools can help with

API management tools:
 - provide visibility of all your APIs, encouraging reuse
 - allow you to standardise common design patterns 
 - help you automate many administrative and operational tasks
 - provide a central place for you to share API documentation and support
 - provide data and metrics to help you understand your API’s performance and usage
 - help you implement and maintain good security and data protection practices



### Where API Management tools fit into the API Lifecycle

It is useful to consider the API lifecycle as having several stages:
 - Design - guidelines and policies for API production
 - Deployment - assessment, testing and rolling out to live
 - Management - ongoing maintenance and monitoring
 - Discovery - how developers discover your APIs
 - Retirement - decommissioning your API when it is no longer needed

Each stage of the API lifecycle will benefit from having different tools and processes in place.


[Next - Design](APIM-Design.html)