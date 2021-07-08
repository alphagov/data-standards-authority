---
title: DRAFT GraphQL Guidance
weight: 840
keywords: 'Graph QL Guidance'
identifier: DSA-004
name: GraphQL
organisation: Data Standards Authority
author_email: api-programme@digital.cabinet-office.gov.uk
status: Draft
startDate: 2021-04-01
dateAdded: 2021-04-01
dateUpdated: 2021-05-26
---
_This is a DRAFT document for discussion. This is not finalised. All aspects of this document are subject to change. Please leave comments on any aspect of it._

# *DRAFT* | When to use a GraphQL API | *DRAFT*

[GraphQL](https://graphql.org) is an API specification originally developed by Facebook as an alternative to REST for compiling complex data structures in real time. It was open-sourced in 2015 and is used by many organisations with similarly complex requirements.

GraphQL is supported by a healthy developer community, it is still a relatively new technology. Developer tooling & platform vendors are introducing native GraphQL support, however capability and maturity remains considerably behind established API patterns such as REST. GraphQL introduces new challenges for APIs, particularly in the context of security, performance & governance.

There are not many examples of GraphQL in the public sector as it presents certain challenges including those mentioned previously which make it not always suitable for government technology teams.

Some features of GraphQL present advantages or disadvantages depending on the context. This guidance will outline some things to keep in mind when considering using GraphQL.

## What GraphQL can do
The benefits of using GraphQL include the ability for clients to:

- request exactly what they want and get no more (over-fetching) or no less (under-fetching) than they need
- get multiple unrelated resources in a single call, rather than using multiple calls to separate endpoints as with REST
- use the built-in introspection feature to understand what queries are supported
- because GraphQL is a standard specification, there is a consistent mechanism for client interactions

## Things you should know

### Security
There are established security patterns for REST, but fewer for GraphQL. For example, it is important to ensure that API management & gateway tooling fully support GraphQL specific type & field-based permissions, authorization, rate-limiting and security policies to mention a few. Failing this, additional development may be required to support these requirements in a standardised and repeatable way.

GraphQL is transport layer protocol agnostic, which means you are not bound by using HTTP. This can provide flexibility, but can have security implications.


### Versioning
GraphQL does not use versioning, allowing you to change your API’s data structure without requiring users to switch over to a new version. This can provide flexibility and reduce overhead from not having to manage different versions.

However, this does not protect you from introducing breaking changes, since updates to the schema can still affect stored queries. You should still communicate changes to your users with good notice so they can make any necessary changes to their implementations.


### Caching
Since GraphQL does not use URL-based endpoints, there is no unique identifier to build cache. You will need to consider when and how to support [caching](https://graphql.org/learn/caching/) in your GraphQL solution to ensure the service delivers the expected performance. For example, you could add a unique identifier field such as `id`.

Without a way to cache, GraphQL APIs can end up hitting the database more frequently, which can have cost implications. You might also need dedicated database administrators to provide support and maintenance, which adds cost and overhead for your development team.


### Documentation
GraphQL is often considered as self-documenting because it exposes the schema structure. Much like other query languages, you can use introspection to understand what resources and types are supported.

However, you should not rely on the self-documenting features of GraphQL alone. Producing documentation is still important for:

* providing descriptions for fields and types - while you should use clear names when designing any type of API, this does not always allow for enough context
* onboarding users - this is particularly important for developers who are new to GraphQL and may need some hand holding, for example explaining the difference between a query and a mutation
* presenting conceptual documentation


### Tooling
UK government guidelines recommend using API management platforms to manage things like authentication, monitoring, and error logging.


### Finding the skills for your team
While GraphQL is becoming more popular, finding developers with the skills for GraphQL API development can be difficult.

GraphQL developers are in high demand and can be more expensive to hire. There can be quite a steep learning curve for REST developers to unlearn REST habits and ‘think in GraphQL’.

You should therefore consider whether your team can afford the time and money to invest in getting the right skills in place.


## When GraphQL can be a good choice

GraphQL can be a successful approach in certain circumstances, for example where:

* there is a need to minimise bandwidth use because data is being transmitted over satellite or other low-bandwidth channels, or because data transfer is expensive
* you anticipate needing to use multiple data sources
* you have several types of clients with different data needs

You can read more in [this blog post about recent uses of GraphQL in government](https://technology.blog.gov.uk/2020/08/28/what-we-learned-from-a-recent-graphql-workshop/).
