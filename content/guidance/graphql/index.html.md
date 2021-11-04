---
title: GraphQL Guidance
weight: 840
keywords: 'Graph QL Guidance'
identifier: DSA-004
name: GraphQL
organisation: Data Standards Authority
author_email: api-programme@digital.cabinet-office.gov.uk
status: published
startDate: 2021-04-01
dateAdded: 2021-04-01
dateUpdated: 2021-10-06
---
The current version of [guidance on Using GraphQL for your API](https://www.gov.uk/guidance/using-graphql-for-your-api) is published on GOV.UK.

_The content below is a DRAFT document for discussion. All aspects of this document are subject to change. Please leave comments on any aspect of it._

# *DRAFT* | Using GraphQL for your API | *DRAFT*

Understand the challenges and considerations around using GraphQL such as security, versioning, caching, tooling and team skills.

[GraphQL](https://graphql.org) is an API specification originally developed by Facebook as an alternative to REST for querying complex data structures.

GraphQL was open-sourced in 2015.  It’s still evolving and has relatively low adoption compared with other API styles like REST. However, there’s an active GraphQL developer community, and more tooling and platform vendors are starting to introduce native support for GraphQL.

## Benefits of GraphQL
Using a GraphQL API provides your users with the ability to:

- request exactly what they need from multiple combined resources in a single call
- filter the returned data from a call as part of the query process
- use the [introspection](https://graphql.org/learn/introspection/) feature to understand what resources and types are supported

Because GraphQL is a specification, API developers must follow a standard set of interactions. This means GraphQL can be easier to understand and use than less rigid API frameworks.

## Before you decide to use GraphQL
You should only use GraphQL if you and your team can set up and manage the necessary:

- team skills
- security
- tooling
- versioning
- caching
- documentation

### Team skills
While GraphQL is becoming more popular, finding developers with the skills for GraphQL API development can be difficult.

GraphQL developers are in high demand and can be more expensive to hire. There can be a steep learning curve for REST developers to unlearn REST habits and ‘think in GraphQL’. You should consider whether your team can afford the time and money to invest in getting the right skills in place.

### Security
There are established security patterns for REST, but fewer for GraphQL. Because GraphQL is a query language, your users have more flexibility in what data they can request and can query across large amounts of connected data. This larger, more complex data set means there can be a higher risk of unexpected security holes.

For this reason, it’s important to understand the whole data set the API covers and set the appropriate level of permissions so users can only access data they need to. This will improve the security of your data and improve the performance of your service by making sure your API does not return overly large result sets.

You should set permissions so they’re granular, multi-level and role-based. In GraphQL, permissions can be set at the level of individual fields to restrict or allow access either at a user or a role level. For example, you can allow access to a particular field only to specific developer users, or to all users in a ‘Developer’ role.

Given the level of access GraphQL gives to your data, you should implement rate limiting, set request timeouts and limit query depth and complexity, to avoid queries overloading (‘choking’) the system.

### Tooling
Use an API management tool or API gateway for your permissions, authorisation, rate limiting and security policies, rather than building tools for this yourself. You must monitor and audit queries to make sure your service remains secure, so make sure you use an API gateway that can deal with GraphQL services.

There are not many API management tools that support GraphQL, so you’ll need to look into what specialised tooling is available and suitable for your project.

### Versioning
Using GraphQL does not protect you from introducing breaking changes. If you remove or rename fields, you’ll still need to communicate changes to your users in advance so they can make any necessary changes to their implementations.

GraphQL can make communicating these changes easier. For example, you can flag deprecated fields or changes in query responses so developers can see them more easily. However, it’s important to reflect these changes in your documentation as well.

You should also monitor whether any users are still using deprecated features, so you can offer them support.

An example of where using a ‘versionless’ API can be helpful is for rapid prototyping. Using a single evolving version lets you experiment quickly with iterative changes to the schema without needing to keep updating the version. In production, however, you should use versioning for GraphQL in the same way as you would with other APIs.

### Caching
You'll need to consider when and [how to support caching in your GraphQL API](https://graphql.org/learn/caching/) to ensure the service delivers the expected performance.

You cannot use HTTP caching with GraphQL. Because GraphQL queries are so flexible and have infinite possibilities, you cannot cache all the possible results your API might return, so you’ll need to build special tooling to do caching.

If you do not implement a cache, your GraphQL API might put more load on the database more frequently than an equivalent REST API, which can add costs and lower performance. You might also need dedicated database administrators to provide support and maintenance, which adds cost and operational overhead for your development team.

### Documentation
Using GraphQL allows your users to use introspection to understand what resources and types your API supports, so you will need to make sure that your schema descriptions are correct and useful.

However, introspection only helps your users when they are building queries. To help your users at different stages of integrating your API, you should produce a range of documentation including:

- conceptual documentation to introduce your API - an overview of the benefits as well as any conditions users should be aware of such as costs or technical prerequisites
- practical information to onboard users - for example, a ‘get started’ guide with information about your API’s rate limits and how to get authorisation
- task-based documentation, which might include template examples of queries
- reference documentation with descriptions for fields and types - to provide additional context about resources and types

Your documentation should be relevant to what your users need. You might include information to help your users understand the basics of GraphQL, for example by linking to official documentation.

You can read more about [how to document APIs](https://www.gov.uk/guidance/how-to-document-apis) and [writing API reference documentation](https://www.gov.uk/guidance/writing-api-reference-documentation).

## Examples of when GraphQL can be a good choice
You might want to use a GraphQL API if you:

- need to minimise bandwidth use, because you’re transmitting data over satellite or other low-bandwidth channels, or because data transfer is expensive
- need to use multiple data sources in a single query - for example, HM Passport Office uses a single GraphQL API so users can combine and query 3 different data sets
- have applications with different data needs, for example a mobile app and website - GraphQL can send the appropriate size of data to different applications
- are in a discovery phase and exploring what data you want to use - GraphQL lets you pull different data sets into a UI, which can be useful for rapid prototyping

You can read more in [a blog post about recent uses of GraphQL in government](https://technology.blog.gov.uk/2020/08/28/what-we-learned-from-a-recent-graphql-workshop/).
