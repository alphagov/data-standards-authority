---
title: Draft API Standards v3
weight: 510
keywords: 'API Standards'
identifier: DSA-002
name: API Standards v3
organisation: Data Standards Authority
status: Active
startDate: 2020-12-01
dateAdded: 2020-12-16
dateUpdated: 2021-02-01
---

# API Standards v3

DRAFT - The current version of the standards can be found on [GOV.UK](https://www.gov.uk/guidance/gds-api-technical-and-data-standards)


| Doc status: | **In progress** |
| --- | ---|
| Author: | **Annie Streater** |
| Reviewers: | Charles Baird, Arnau Siches, Steve Evans, Peter Gothard |
| What user need does this page serve?: | |
| It should contain: | |
| Who are the users? | People who design, develop, manage, and use government APIs. |
| What are they looking for? | |
| How did they find this page? |  - From the [API Design Guidance](https://www.gov.uk/government/collections/api-design-guidance); In future, potentially from the [API Catalogue](https://api.gov.uk); Search results on [GOV.UK](https://www.gov.uk/search/all?keywords=api&order=relevance) |
| What are the initial problem statements? | |
| What is the scope of this piece of work? | |
| - Will include: |  - GraphQL - General style review and tidy up |
| - Will not include: | |
| Page URL/published location: | - [https://www.gov.uk/guidance/gds-api-technical-and-data-standards](https://www.gov.uk/guidance/gds-api-technical-and-data-standards) |
| Comments/notes: Annotate the page with these metadata tags: |'API Standards' |

Publish your APIs over the internet by default. Email [api-standards-request@digital.cabinet-office.gov.uk](api-standards-request@digital.cabinet-office.gov.uk) if you think your
APIs should not be published over public infrastructure.

## Follow the Technology Code of Practice

Make sure your APIs satisfy the requirements of the [Technology Code of Practice](https://www.gov.uk/government/publications/technology-code-of-practice/technology-code-of-practice)
(TCoP) by making sure they:

-   follow the [Open Standards Principles](https://www.gov.uk/government/publications/open-standards-principles) of open access, consensus-based open process and royalty-free licensing

-   scale so they can maintain service level objectives and agreements when demand increases

-   are stable so they can maintain service level objectives and agreements when changed or dealing with unexpected events

-   adhere to [UK government security policies and guidelines](https://www.gov.uk/government/publications/cyber-security-guiding-principles) and [other TCOP security guidance](https://www.gov.uk/guidance/make-things-secure)

-   are reusable where possible so the government does not duplicate work

## Use RESTful

Follow the industry standard and where appropriate build APIs that are [RESTful](https://restfulapi.net/), which use HTTP verb requests to manipulate data.

When handling requests, you should use HTTP verbs for their specified purpose.

One of the advantages of REST is that it gives you a framework for communicating error states.

In some cases, it may not be applicable to build a REST API, for example, when you are building an API to stream data.

## Use HTTPS

You should use [HTTPS](https://www.ncsc.gov.uk/guidance/tls-external-facing-services) when creating APIs.

Adding HTTPS will secure connections to your API, preserve user privacy, ensure data integrity, and authenticate the server providing the API.

The [Service Manual provides more guidance on HTTPS](https://www.gov.uk/service-manual/technology/using-https).

Secure APIs using Transport Layer Security (TLS) v1.2. Do not use Secure Sockets Layer (SSL) or older versions of TLS.

There are multiple free and low-cost vendors that offer TLS certificates.

Make sure potential API users can establish trust in your certificates.
Make sure you have a robust process for timely [certificate renewal and revocation](https://www.ncsc.gov.uk/guidance/provisioning-and-securing-security-certificates).

## Consider linking data (hypermedia)

Your API may warrant linking your data together. You can make your API more programmatically accessible by returning URIs, and by using existing standards and specifications.

Use Uniform Resource Identifiers (URIs) to identify certain data:

{

\"name\": \"Bob Person\",

\"company\": \"https://your.api/company/bobscompany\";

}

When your API returns data in response to an HTTP call, you should [use URIs](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier) in the payload to identify certain data. Where appropriate, you should use specifications that use hypermedia, including [CURIES](https://www.w3.org/TR/curie/), [JSON-LD](https://json-ld.org/) or [HAL](https://en.wikipedia.org/wiki/Hypertext_Application_Language). This makes it easier to find those resources.

## Use JSON

Your first choice for all web APIs should be JSON where possible.

Only use another representation to build something in exceptional cases, like when you:

-   need to connect to a legacy system, for example, one that only uses XML

-   will receive clear advantages from complying with a broadly adopted  standard (for example, [SAML](http://saml.xml.org/))

We recommend you should:

-   create responses as a JSON object and not an array (JSON objects can contain JSON arrays) - arrays can limit the ability to include metadata about results and limit the API's ability to add additional top-level keys in the future

-   document your JSON object to ensure it is well described, and so that it is not treated as a sequential array

-   avoid unpredictable object keys such as those derived from data as this adds friction for clients

-   use consistent grammar case for object keys - choose snake_case or camelCase and be consistent

## To represent time and date

The government mandates using the [ISO 8601 standard](https://www.gov.uk/government/publications/open-standards-for-government/date-times-and-time-stamps-standard) to represent date and time in your payload response. This helps people read the time correctly.

Use a consistent date format. For dates, this looks like 2017-08-09. For dates and times, use the form 2017-08-09T13:58:07Z.

## To represent a physical location

The European Union mandates using the [ETRS89 standard](https://www.gov.uk/government/publications/open-standards-for-government/exchange-of-location-point) for the geographical scope of Europe. You can also use WGS 84 or other CRS coordinate systems for European location data in addition to this.

Use the [World Geodetic System 1984](https://www.nga.mil/ProductsServices/GeodesyandGeophysics/Pages/WorldGeodeticSystem.aspx) (WGS 84) standard for the rest of the world. You can also use other CRS coordinate systems for the rest of the world in addition to this.

You should use [GeoJSON](http://geojson.org/) for the exchange of location information.

## Use Unicode for encoding

The [Unicode Transformation Format(UTF-8)](https://en.wikipedia.org/wiki/UTF-8) standard is[mandatory for use in government](https://www.gov.uk/government/publications/open-standards-for-government/cross-platform-character-encoding-profile) when encoding text or other textual representations of data.

## How to respond to data requests

Configure APIs to respond to 'requests' for data rather than 'sending' or 'pushing' data. This makes sure the API user only receives the information they require.

When responding, your API must answer the request fully and specifically. For example, an API should respond to the request "is this user married?" with a boolean. The answer should not return any more detail than is required and should rely on the client application to correctly interpret it.

For example:

{ \"married\":\"false\" }

Rather than:

person\": {

\"name\": \"Alice Betterland\",

\"dob\": \"1999-01-01\",

\"married\": false,

\"validFrom\":\"2011-04-03\",

\"validTo\":\"\"

}

}

## Design data fields with user needs in mind

When designing your data fields, you should consider how the fields will meet user needs. Having a [technical writer](https://www.gov.uk/government/publications/technical-writer-role-description/technical-writer-role-description) in your team can help you do this. You can also regularly test your documentation.

For example, if you need to collect personal information as part of your dataset, before deciding on your payload response, you may need to consider whether:

-   the design can cope with names from cultures which do not have first and last names

-   the abbreviation DOB makes sense or whether it's better to spell out the field to date of birth

-   DOB makes sense when combined with DOD (date of death) or DOJ (date of joining)

You should also make sure you provide all the relevant options. For example, the "marriage" field is likely to have more than 2 states you wish to record: married, unmarried, divorced, widowed, estranged, annulled and so on.

Depending on what you decide, you may choose the following payload as a response:

{

person\": {

\"name\": \"Alice Wonderland\",

\"dob\": \"1999-01-01\",

\"married\": true,

\"validFrom\":\"2010-03-12\",

\"validTo\":\"2011-04-03\"

},

person\": {

\"name\": \"Alice Betterland\",

\"dob\": \"1999-01-01\",

\"married\": false,

\"validFrom\":\"2011-04-03\",

\"validTo\":\"\"

}

}

## Let users download whole datasets in bulk

When providing an Open Data API, you should let users download whole datasets unless they contain restricted information. This gives users:

-   the ability to analyse the dataset locally

-   support when performing a task requiring access to the whole dataset (for example, plotting a graph on school catchment areas in England)

Users should be able to index their local copy of data using their choice of database technology and then perform a query to meet their needs. This means that future API downtime won't affect them because they already have all the data they need.

Using a record-by-record data API query to perform the same action would be suboptimal, both for the user and for the API. This is because:

-   rate limits would slow down access, or may even stop the whole dataset from downloading entirely

-   if the dataset is being updated at the same time with the record-by-record download, users may get inconsistent records

If you allow a user to download an entire dataset, you should consider providing a way for them to keep it up to date. For example you could live stream your data or notify them that new data is available so that API consumers know to download your API data periodically.

## Encourage users to keep local dataset copies up to date

*Do not* encourage users to keep large datasets up to date by re-downloading them because this approach is wasteful and impractical.
Instead, let users download incremental lists of changes to a dataset.
This allows them to keep their own local copy up to date and saves them having to re-download the whole dataset repeatedly.

There isn't a recommended standard for this pattern, so users can try different approaches such as:

-   encoding data in [Atom/RSS](https://en.wikipedia.org/wiki/Atom_(standard)) feeds

-   using emergent patterns, such as event streams used by products such as [Apache Kafka](https://kafka.apache.org/)

-   making use of open data registers

## When publishing bulk data

Make data available in CSV formats as well as JSON when you want to publish bulk data. This makes sure users can use a wide range of tools, including off-the-shelf software, to import and analyse this data.

Publish bulk data on [data.gov.uk](https://data.gov.uk/) and make sure there is a prominent link to it.

## Keep a log of requests for personal data

If your [API serves personal or sensitive data](https://ico.org.uk/media/for-organisations/documents/1042221/protecting-personal-data-in-online-services-learning-from-the-mistakes-of-others.pdf), you must log when the data is provided and to whom. This will help you meet your requirements under General Data Protection Regulation (GDPR), respond to data subject access requests, and detect fraud or misuse.

## When to use open access

Use open access (no control) if you want to give unfettered access to your API and you do not need to identify your users, for example when providing open data. However, do bear in mind the risk of [denial-of-service attacks](https://www.ncsc.gov.uk/collection/denial-service-dos-guidance-collection).

Open access does not mean you are unable to throttle your API.

Consider the option of publishing open data on [data.gov.uk](http://data.gov.uk/) instead of via an API. When using open data do not use authentication so you can maximise the use of your API.

## When to authenticate your API

Authentication is required when you want to identify clients for the purposes of:

-   rate limiting/throttling

-   auditing

-   billing

-   authorisation

Your purpose will dictate the security requirements for your authentication solution.

For example, if you need to identify users purely for rate limiting, you may not need to refresh user tokens very often as a token in the wrong hands will be unlikely to threaten your service.

Make sure you consider your API may require more than just authenticating an organisation token, for example, when dealing with sensitive information such as medical data.

## To provide application-level authorisation

Use application-level authorisation if you want to control which applications can access your API, but not which specific end users. This is suitable if you want to use rate limiting, auditing, or billing functionality. Application-level authorisation is probably not suitable for APIs holding personal or sensitive data unless you really trust your consumers, for example, another government department.

If your organisation is managing the API, you will need to manage the authorisation server.

We recommend using [OAuth 2.0](https://oauth.net/), the open authorisation framework (specifically with the Client Credentials grant type). This service gives each registered application an OAuth2 Bearer Token, which can be used to make API requests on the application's own behalf.

## To provide user-level authorisation

Use user-level authorisation if you want to control which end users can access your API. This is suitable for dealing with personal or sensitive data.

For example, [OAuth 2.0](https://oauth.net/) is a popular authorisation method in government, specifically with the Authorisation Code grant type. Use OAuth 2.0 Scopes for more granular access control.

[OpenID Connect](http://openid.net/connect/) (OIDC), which builds on top of OAuth2, with its use of [JSON Web Token (JWT)](https://tools.ietf.org/html/rfc7519), might be suitable in some cases, for example a federated system.

## For privacy and allow lists

Use an allow list if you want your API to be permanently or temporarily private, for example, to run a [private beta](https://www.gov.uk/service-manual/agile-delivery/how-the-beta-phase-works).
You can add to the allow list per application or per user.

You should not add the IP addresses of the APIs you consume to your allow list. This is because APIs may be provided using [Content Delivery Networks](https://en.wikipedia.org/wiki/Content_delivery_network) (CDNs) and scalable load balancers, which rely on flexible, rapid allocation of IP addresses and sharing. Instead of using an allow list, you should use an [HTTPS egress proxy](https://en.wikipedia.org/wiki/Egress_filtering).

## Follow good practice for tokens and permissions

You should:

-   choose a suitable refresh frequency and expiry period for your user access tokens - failure to refresh access tokens regularly can lead to vulnerabilities

-   allow your users to revoke authority

-   invalidate an access token yourselves and force a reissue if there is a reason to suspect a token has been compromised

-   use time-based one-time passwords (TOTP) for extra security on APIs with application-level authorisation

-   use multi-factor authentication (MFA) and identity verification (IV) for extra security on APIs with user-level authorisation

-   ensure the tokens you provide have the narrowest permissions possible (narrowing the permissions means there's a much lower risk to your API if the tokens are lost by users or compromised)

## Monitor APIs for unusual activity

Your API security is only as good as your day-to-day security processes.

Monitor APIs for unusual behaviour just like you'd closely monitor any website. Look for changes in IP addresses or users using APIs at unusual times of the day. Read the National Cyber Security Centre (NCSC) guidance to find out how to [implement a monitoring strategy](https://www.ncsc.gov.uk/collection/10-steps-to-cyber-security?curPage=/collection/10-steps-to-cyber-security/the-10-steps) and the specifics of [how to monitor the security status of networks and systems](https://www.ncsc.gov.uk/collection/nis-directive?curPage=/collection/nis-directive/nis-objective-c/c1-security-monitoring).

## When naming and hosting your API

Follow our guidance on [[choosing an API domain name](https://www.gov.uk/guidance/get-an-api-domain-on-govuk)

All API naming in URLs (including the name of your API, namespaces and resources) should:

-   use nouns rather than verbs

-   be short, simple and clearly understandable

-   be human-guessable, avoiding technical or specialist terms where possible

-   use hyphens rather than underscores as word separators for multiword names

For example: \[api-name\].api.gov.uk.

## Avoid the use of namespaces

Generally, each of your APIs should have its own domain, just as each service has its own domain. This will also avoid API sprawl and simplify your versioning.

## When you need to provide multiple APIs from the same domain

If you provide multiple APIs and you have a business case that means you'll deploy common services across them, such as common management, authentication and security approaches, you may need to consider:

-   providing them all from the same domain

-   differentiating them through the use of namespaces.

The namespace should reflect the function of government being offered by this API. Namespaces may be singular or plural, depending on the situation.

## When using sub-resources

Sub-resources must appear under the resource they relate to, but should go no more than three deep, for example:

/resource/id/sub-resource/id/sub-sub-resource.

If you reach a third level of granularity (sub-sub-resource), you should review your resource construction to see if it is actually a combination of multiple first or second level resources.

## When using query arguments

You should use path parameters to identify a specific resource or resources. For example, /users/1.

You should only allow query strings to be used in GET requests for filtering the values returned from an individual resource, for example /users?state=active or /users?page=2.

You should never use query strings in GET requests for identification purposes, for example, avoid using the query string /users?id=1.

Query strings should not be used for defining the behaviour of your API, for example /users?action=getUser&id=1.

## When iterating your API

When iterating your API to add new or improved functionality, you should minimise disruption for your users so that they do not incur unnecessary costs.

To minimise disruption for users, you should:

-   make backwards compatible changes where possible - specify parsers ignore properties they do not expect or understand to ensure changes are backwards compatible (this allows you to add fields to update functionality without requiring changes to the client application)

-   make a new endpoint available for significant changes

-   provide notices for deprecated endpoints

New endpoints do not always need to accompany new functionality if they still maintain backward compatibility.

## When making a backwards incompatible change

When you need to make a backwards incompatible change you should consider:

-   incrementing a version number in the URL or the HTTP header (start with /v1/ and increment with whole numbers)

-   supporting both old and new endpoints in parallel for a suitable time period before discontinuing the old one

-   telling users of your API how to validate data, for example, let them know when a field is not going to be present so they can make sure their validation rules will treat that field as optional

Sometimes you'll need to make a larger change and simplify a complex object structure by folding data from multiple objects together. In this case, make a new object available at a new endpoint, for example:

Combine data about users and accounts from:

/v1/users/123 and /v1/accounts/123

To produce:

/v1/consolidated-account/123

## Set clear deprecation policies

Set clear API deprecation policies so you're not supporting old client applications forever.

State how long users have to upgrade, and how you'll notify them of these deadlines. For example, at GDS, we usually contact developers directly but we also announce deprecation in HTTP responses using a 'Warning' header.

## Provide users with a test service

Your API consumers will want to test their application against your API before they go live. If you have a read only API then you do not necessarily need to provide a test service.

Provide them with a test service (sometimes referred to as a sandbox).

If your API has complex or stateful behaviour, consider providing a test service that mimics the live service as much as possible, but bear in mind the cost of doing this.

If your API requires authorisation, for example using OAuth 2.0, you'll need to include this in your test service or provide multiple levels of a test service.

To help you decide what to provide, do user research - ask your API consumers what a sufficient test service would look like.

## Test your API's compliance

You should provide your development team with the ability to test your API using sample test data, if applicable. Testing your API should not involve using production systems and production data.

## Test your API's performance and scalability

For highly cacheable open data access APIs, a well-configured Content Delivery Network (CDN) may provide sufficient scalability.

For APIs that do not have those characteristics, you should set quota expectations for your users in terms of capacity and rate available. Start small, according to user needs, and respond to requests to increase capacity by making sure your API can meet the quotas you have
set.

Make sure users can test your full API up to the quotas you have set.

Enforce the quotas you have set, even when you have excess capacity. This makes sure that your users will get a consistent experience when you do not have excess capacity, and will design and build to handle your API quota.

As with user-facing services, you should test the capacity of your APIs in a representative environment to help make sure you can meet demand.

Where the API delivers personal or private information you, as the data controller, must provide sufficient timeouts on any cached information in your delivery network.

## Document your API

To document your API start you should:

-   use the [OpenAPI 3 Specification](https://www.openapis.org/) where appropriate for generating documentation (recommended by the Open Standards Board)

-   follow the GOV.UK guidance on [how to document API](https://www.gov.uk/guidance/how-to-document-apis)s and [how to write API reference documentation](https://www.gov.uk/guidance/writing-api-reference-documentation)

-   provide sample code to illustrate how to call the API and to let users know what responses they can expect

In your documentation, you should include:

-   contextual/overview information - what the API does, who it might be used by and under what circumstances

-   business and data rules - under what circumstances is data available or not available

-   error scenarios - preconditions and outcomes - including error codes and messages

-   details on the test service - how to use it and how to simulate the various success and error scenarios

-   full details of request and response parameters, including meaning, data type and any other constraints - give examples of valid values

-   rules on [information handling](https://www.gov.uk/government/publications/information-asset-owner-role-guidance), [incident management](https://www.ncsc.gov.uk/incident-management) and [risk management](https://www.ncsc.gov.uk/incident-management)

-   method of [authentication](https://www.ncsc.gov.uk/guidance/user-authentication-systems-implementation-guide-3) (and how it impacts service interoperability, single sign-on, and rate-limiting)

-   any authorisation rules, for example, use of OAuth 2.0 and specifically which scopes are required for this API

-   design changes (recent and planned) and versioning information

-   availability, latency, ownership, deprecation policies and status capability

-   approach to [backwards compatibility](https://gdstechnology.blog.gov.uk/2016/07/26/considering-our-approach-to-api-iteration/)

-   guidance on configuring the API to make sure it follows any relevant governance frameworks such as [Payment Card Industry Data Security Standard](https://www.pcisecuritystandards.org/pci_security/) and [Health and Social Care Network](https://digital.nhs.uk/health-social-care-network)

-   security information

-   cost of use, if applicable

You should always make sure your documentation is clear, and [communicate when changes are made](https://gdstechnology.blog.gov.uk/2016/07/26/considering-our-approach-to-api-iteration/).
