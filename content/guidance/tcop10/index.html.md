---
title: Technology Code of Practice point 10 - Make better use of data
weight: 860
keywords: 'TCOP Point 10'
identifier: DSA-006
name: TCOPPoint10
organisation: Data Standards Authority
status: published
startDate: 2021-10-07
dateAdded: 2021-10-07
dateUpdated: 2021-10-07
---
The current version of [Technology Code of Practice Point 10](https://www.gov.uk/guidance/make-better-use-of-data) is published on GOV.UK.

_The content below is a DRAFT document for discussion. All aspects of this document are subject to change. Please leave comments on any aspect of it._

# Make better use of data

## Use data more effectively by improving your technology, infrastructure and processes.

To meet point 10 of the [Technology Code of Practice](https://www.gov.uk/guidance/the-technology-code-of-practice) (TCoP) your plans must show you’ve considered:

-   how you will manage data throughout its lifecycle    
-   if any data you need is already available in government in part or in full
-   how you collect and use data to continually improve your services
-   how you can make your data accessible across government
-   how the public can access your data
-   how you will meet any relevant regulations
-   how you will approach data ethics

If you’re going through the [spend control process](https://www.gov.uk/service-manual/agile-delivery/spend-controls-check-if-you-need-approval-to-spend-money-on-a-service) you must explain how you’re trying to meet point 10.

## How making better use of data use will help your programme

Your programme will benefit from:

-   saving time and money, by reusing open data that is already available    
-   reducing the risk of error and fraud, such as using [standard identifiers for properties and streets](https://www.gov.uk/government/publications/open-standards-for-government/identifying-property-and-street-information) to catch invalid addresses
-   infrastructure and services containing consistent information
-   a more consistent experience for citizens when they use government services online, which builds trust
-   only collecting the data you need and only collecting it once
-   making datasets interoperable to make data easier to share within your organisation and across other government organisations

## Follow the required data regulations and consider data ethics

When using data you must follow the [Data Protection Act 2018](https://www.gov.uk/data-protection) and the [EU General Data Protection Regulation](https://ico.org.uk/for-organisations/guide-to-data-protection/guide-to-the-general-data-protection-regulation-gdpr/) (GDPR).

Make sure you only hold data for specified purposes and consider the:

-   [Data Ethics Framework](https://www.gov.uk/government/publications/data-ethics-framework/data-ethics-framework) when considering ethical issues around using and assessing data    
-   [Open Data Principles](https://opendatacharter.net/)
-   [ICO’s Data Protection Impact Assessment](https://ico.org.uk/for-organisations/guide-to-data-protection/guide-to-the-general-data-protection-regulation-gdpr/data-protection-impact-assessments-dpias/) when assessing if you’re following GDPR
-   [UK Digital Strategy](https://www.gov.uk/government/publications/uk-digital-strategy/7-data-unlocking-the-power-of-data-in-the-uk-economy-and-improving-public-confidence-in-its-use)
-   the National Cyber Security Centre’s [Protecting bulk personal data guidance](https://www.ncsc.gov.uk/collection/protecting-bulk-personal-data)
-   [point 9 of the Service Standard](https://www.gov.uk/service-manual/service-standard/point-9-create-a-secure-service) on creating a secure service

## Plan how you will manage your data throughout its lifecycle

Make sure your data is not dependent on the lifecycle of your technology or service. Define and manage your data’s lifecycle and storage in line with the rest of your organisation’s data estate so that you can continue to use the data for as long as you need it.

Consider [using open standards](https://www.gov.uk/guidance/make-use-of-open-standards) to make sharing and reusing data easier. You should aim to make any of your data associated with your technology or service reusable by other government organisations. This does not include data that falls under GDPR rules or highly classified data.

### Choosing the right technology, processes and training

You will need to choose the right data tools for collecting, storing, analysing, sharing and retiring data. Your choice should take into consideration the skills and capabilities you have within your organisation.

You should make sure your data collection practices meet user needs. You should also make sure your [data tools and infrastructure](https://www.gov.uk/guidance/choose-tools-and-infrastructure-to-make-better-use-of-your-data) are scalable and encourage collaboration.

Your data tools and infrastructure should:

-   be understandable and accessible to staff who need to use them    
-   help ensure your data is current and accurate
-   meet security requirements

Also consider whether your business processes include:

-   training for staff    
-   recording the data you have and how you share it
-   planning for data use across technology and services
-   standardising data after collection so it’s easier to make it interoperable
-   a purchasing strategy which considers the total cost of a technology tool or service through its full lifecycle
- automated decision making using the [Ethics, Transparency and Accountability Framework for Automated Decision-Making](https://www.gov.uk/government/publications/ethics-transparency-and-accountability-framework-for-automated-decision-making/ethics-transparency-and-accountability-framework-for-automated-decision-making)


### Include technical debt in your prioritisation

Technical debt can build up over time and make your service harder to maintain. Look at the hidden technical debt that may exist in your data processing and wherever possible simplify your data processing.

Highlight technical debt and data processing issues so that appropriate spending is allocated to fix long-term issues. Look at the hidden technical debt that may exist in your data processing and wherever possible simplify your data processing.

### Agreeing and exiting supplier contracts

When you are using a supplier, you should make sure the contract provides you with access to all your data. Your contract must also specify the exit and renewal arrangements for your data. This includes making sure the supplier returns your data:

-   in an open data standard format from the underlying database    
-   through an API that follows the [API technical and data standards](https://www.gov.uk/guidance/gds-api-technical-and-data-standards)

If you are agreeing a contract of over £20 million, the supplier must provide this API, as outlined in the [Model Services Contract guidance](https://www.gov.uk/government/publications/model-services-contract).

### Storing and standardising your data

The government’s [Data Standards Authority](https://www.gov.uk/government/groups/data-standards-authority) and the [Open Standards Board](https://www.gov.uk/government/groups/open-standards-board) have approved a number of [open standards for data](https://www.gov.uk/government/collections/open-standards-for-government-data-and-technology) for use by the government. Where possible and appropriate, you should use these standards to make it easier to analyse data and share it with other departments.

Make data available in a suitable format, for example as a CSV file or through an API. Read the [guidance on using CSV file format](https://www.gov.uk/guidance/using-csv-file-format) and refer to the [API technical and data standards](https://www.gov.uk/guidance/gds-api-technical-and-data-standards).

You should also consider:

-   where you will store your data and whether the location meets your organisation’s security requirements    
-   having a [cloud hosting strategy](https://www.gov.uk/guidance/creating-and-implementing-a-cloud-hosting-strategy)
-   making sure your chosen technology is scalable and adaptable for changing requirements
-   making sure your data has audit trails that show how individual data records are accessed and updated
-   how your organisation uses data and how easy it is to scale areas such as storage to meet your needs

### Securing and backing up your data

Consider what security protocols you should have in place to:
- make sure only authorised users have access to your data
- keep back up copies of data if appropriate
- monitor for possible threats and attacks

You should also prepare a disaster recovery plan or incident management protocol so that your team knows what to do in the event of a data breach, attack or loss of data. Read [Point 6 of the Technology Code of Practice about how to make things secure](https://www.gov.uk/guidance/make-things-secure). The National Cyber Security Centre (NCSC) has also [guidance on incident management](https://www.ncsc.gov.uk/collection/incident-management).

### Publishing and sharing your data

Follow the [Data Ethics Framework](https://www.gov.uk/government/publications/data-ethics-framework/data-ethics-framework) to make sure you’re using data based only on user needs.

Where possible you should [work in the open](https://www.gov.uk/guidance/be-open-and-use-open-source) and publish your data. If you plan to publish data, you should consider how you will follow the:

-   [Open Data Principles](https://opendatacharter.net/) to ensure your data is open by default    
-   [government metadata standards](https://www.gov.uk/government/collections/metadata-standards-for-sharing-and-publishing-data) to improve data sharing across government
-   [Information Commissioner’s Office Code of Practice for data sharing](https://ico.org.uk/media/for-organisations/documents/1068/data_sharing_code_of_practice.pdf) to ensure you make the right decisions when sharing personal data
-   [API technical and data standards](https://www.gov.uk/guidance/gds-api-technical-and-data-standards) and the [API design guidance](https://www.gov.uk/government/collections/api-design-guidance) when developing an API to publish your data
-   guidance on [managing your data for access and reuse](https://www.gov.uk/guidance/manage-your-data-for-access-and-reuse)

You should also consider:

-   using [Open Standards](https://www.gov.uk/government/collections/open-standards-for-government-data-and-technology#adopted-open-standards-for-government) to make any future data analysis easier, and where appropriate, share data with other departments
- attaching metadata to your data so that users have all the information they need      
-   where you publish your data
-   how you can share your non-sensitive data to help minimise duplicate data sets
-   what [data tools and infrastructure](https://www.gov.uk/guidance/choose-tools-and-infrastructure-to-make-better-use-of-your-data) you need to keep pace with user needs and encourage collaboration

When documenting your data architecture, consider whether you can explain concepts using text or whether you need a diagram supported by text. Follow the GOV.UK content design guidance on using images to make sure your documentation is accessible.

### Archiving, deleting or renewing data

You should only keep data for as long as necessary. You will need to put a process in place to help you decide when to update, delete, retire or archive your data. You should have processes to:

-   decide when it is right for your organisation to retire or archive data    
-   decide what data you can delete and replace with new or updated data
-   meet the GDPR requirement to delete an individual’s data on their request
-   securely delete data when it’s no longer needed

The [National Archives has guidance on information management](https://www.nationalarchives.gov.uk/information-management/) and can help with archiving data.

## Related guides

Policies and guidance available includes:

-   [Government technology standards and guidance](https://www.gov.uk/guidance/government-technology-standards-and-guidance)
-   [Data Ethics Framework](https://www.gov.uk/government/publications/data-ethics-framework)
-   [Publish and use government’s open data](https://data.gov.uk/)
-   [Unlocking the power of data in the UK economy and improving public confidence in its use](https://www.gov.uk/government/publications/uk-digital-strategy/7-data-unlocking-the-power-of-data-in-the-uk-economy-and-improving-public-confidence-in-its-use) - part 7 of the [UK Digital Strategy](https://www.gov.uk/government/publications/uk-digital-strategy)
-   [Making better use of data](https://www.gov.uk/government/publications/government-transformation-strategy-2017-to-2020/government-transformation-strategy#make-better-use-of-data) - part of the [Government Transformation Strategy 2017-2020](https://www.gov.uk/government/publications/government-transformation-strategy-2017-to-2020)
-   [Government transformation strategy - better use of data](https://www.gov.uk/government/publications/government-transformation-strategy-2017-to-2020/government-transformation-strategy-better-use-of-data)
-   [EU General Data Protection Regulation](http://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32016R0679) (GDPR)
-   [Data Protection Act 2018](http://www.legislation.gov.uk/ukpga/2018/12/contents/enacted)
-   [API technical and data standards](https://www.gov.uk/guidance/gds-api-technical-and-data-standards)
-   Local Government Association - [better use of data](https://www.local.gov.uk/our-support/guidance-and-resources/data-and-transparency/better-use-data)
-   [Open Standards for government data and technology](https://www.gov.uk/government/collections/open-standards-for-government-data-and-technology)
-   [Open data principles](https://opendatacharter.net/)
-   [Digital Economy Act 2017 part 5: Codes of Practice](https://www.gov.uk/government/publications/digital-economy-act-2017-part-5-codes-of-practice)
