---
title: Publish reference data for use across government
weight: 820
keywords: 'Reference Data'
identifier: DSA-002
name: ReferenceArchitecture
organisation: Data Standards Authority
status: Active
startDate: 2021-01-22
dateAdded: 2021-01-27
dateUpdated: 2021-02-01
---

## DRAFT Publish reference data for use across government DRAFT


_This is a DRAFT document for discussion. This is not finalised. All aspects of this document are subject to change. Please leave comments on any aspect of it._


<table>
<thead>
<tr class="header">
<th>Doc status:</th>
<th>First draft</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Authors:</td>
<td>Peter Gothard, Lalit Shah</td>
</tr>
<tr class="even">
<td>Reviewers:</td>
<td><p>Arnau Siches</p>
<p>Gareth Heyes</p>
<p>Gareth Watkins</p>
<p>Emmanuel Silva</p></td>
</tr>
<tr class="odd">
<td>What user need does this page serve?</td>
<td><p><strong>What is this guidance (top line)?:</strong></p>
<p>This guidance helps create good practice for publishing reference data across government in a useful form</p>
<p><strong>It should contain:</strong></p>
<p>Information and resources to help readers:</p>
<ul>
<li><blockquote>
<p>publish reference data to follow best practice</p>
</blockquote></li>
<li><blockquote>
<p>build a publishing, governance and support strategy</p>
</blockquote></li>
</ul>
<p><strong>Who are the users?</strong></p>
<p>Anyone in government looking to publish their organisation’s reference data for others to use</p>
<p><strong>What are they looking for?</strong></p>
<p>Best practice in publishing their own organisation’s reference data for the use of others</p>
<p><strong>How did they find this page?</strong></p>
<p>When interested parties search <a href="http://gov.uk">GOV.UK</a> they should get a top hit that leads them to the DSA reference data guidance collection, and a second hit to the Registers page</p>
<p>Those going directly to the Registers page should be provided with links to find the DSA guidance.</p>
<p><strong>What are the initial problem statements?</strong></p>
<p>This is an opportunity or the DSA to introduce guidance for publishing reference data in government, in order to encourage organisations to begin managing and publishng their own data real estates rather than relying on centralised platforms managed by others</p></td>
</tr>
<tr class="even">
<td>Page URL/published location</td>
<td><a href="https://www.registers.service.gov.uk/"><u>https://www.registers.service.gov.uk/</u></a> is the existing location. The new destination will be a guidance page under a DSA address.</td>
</tr>
<tr class="odd">
<td>Comments/notes</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Annotate the page with these metadata tags:</td>
<td><em>[reference data, master data, registers]</em></td>
</tr>
</tbody>
</table>


#### Share your reference data for use in projects and services outside your organisation


## Who should use this guidance 

This guidance is for government employees who are publishing reference data for the use of others in government. It shares the best practice for creating a strategy to manage and support reference data for publishing.

Reference data is defined as any data used to organise or categorise other data. This can be data which lies inside or outside an organisation.

It usually consists of codes, descriptions and definitions of data, for example the [<u>ISO-3166 country codes</u>](https://www.iso.org/iso-3166-country-codes.html), which are an internationally recognised set of codes that can be used to refer to countries and their subdivisions.

## Define a reference data publishing strategy

Reference data is a valuable asset which can inform and aid user decisions. Publishing it for the use of others across government is an excellent way to share its advantages while saving time and cost for others.

Reference data should be published in a way to make it:

* always accessible and up-to-date, maximising its usefulness and avoiding potentially costly decision-making with outdated reference data
* validated and accurate at any point in time, with a history of changes maintained, and expired versions still available for consumption
* findable to its users
* supported by an organisational infrastructure that can handle the processes and demands of creating and maintaining the reference data itself, and user needs in accessing it

### Appoint a reference data owner and steward to manage your publishing strategy

Your publishing strategy should be effectively managed. A good way to do this is by appointing both a reference data owner and a reference data steward to work together to prepare your reference data properly, and support it and its users after publishing.

The reference data owner should decide on definitions, policy and decisions about your reference data based on your organisation's individual responsibility. They should also decide who can access and change the data.

The reference data steward is responsible for carrying out the rules set by the reference data owner. They are accountable for the quality of the data, compliance with regulatory requirements, and conformity to your organisation’s data principles and policies.

They should also resolve any practical data-related issues such as incomplete records or queries raised by users.

The reference data owner and steward do not have to be individuals. The responsibility is best handled by teams, in order to spread the responsibility evenly and improve accountability.

You could also create a reference data ‘forum’ of individuals drawn from relevant parts in your organisation to liaise and discuss the [<u>governance of reference data</u>](https://www.dataversity.net/what-is-data-governance/) more generally, as well as in relation to publishing.

### Establish and use a single, trusted source for your reference data

Your reference data should be created from a single, authoritative data source. This single source should be placed in a storage system or database, and be known as your system of record (SOR).

In some situations, you may need to create a reference data by combining several data sources. In these cases, each published reference data set should have its own SOR, created by combining any existing SORs which contributed to it.

Each record in your reference data should be marked with a unique identifier (UID) to associate it with the same SOR for the life of the data set. This makes it easier for your users to index, search and manage the reference data, as well as tracking changes between published versions.

A UID marks a record as entirely different from every other record in a data set. The syntax of a UID should be made up of words, letters, numbers or a combination of these. Examples include serial numbers, stock keeping units (SKU) as found on barcodes on items for sales, or [<u>currency codes</u>](https://www.iso.org/iso-4217-currency-codes.html), as found in international currency conversion services.

You should also make UIDs persistent, which means guaranteeing they are managed and kept unchanged for the life of the reference data, in order to ensure accuracy and consistency for your users.

When using data from other organisations, you should follow their own rules for using their data. For example, use of [<u>Ordnance Survey’s UPRN</u>](https://www.ordnancesurvey.co.uk/business-government/products/open-uprn) (unique property reference number) dataset needs to follow the
[<u>Ordnance Survey Open Identifiers policy</u>](https://www.ordnancesurvey.co.uk/business-government/tools-support/open-mastermap-programme/open-id-policy).

You should also be mindful when creating new SORs and reference data sets to observe government guidance around [<u>reusing data whenever possible</u>](https://www.gov.uk/guidance/manage-your-data-for-access-and-reuse), and cutting down on waste and duplication.

## Publish your reference data for useability and security

Your published reference data should be readable by both humans and machines. The Government Digital Service recommends an [<u>API-first approach</u>](https://www.gov.uk/government/collections/api-design-guidance), publishing reference data in JSON format. You may also want to consider publishing in [<u>CSVW (CSV on the
Web)</u>](https://www.w3.org/TR/tabular-data-primer/) format, should users need a CSV file. The most important thing is that the format you
choose to publish in is most suitable to your users’ needs.

When publishing to the web, you should [<u>follow GOV.UK</u> <u>guidance
around best practice in SEO (search engine
optimisation)</u>](https://www.gov.uk/government/publications/search-engine-optimisation-for-publishers-best-practice-guide/search-engine-optimisation-seo-for-data-publishers-best-practice-guide).

You should include metadata with your reference data providing an overview of its contents, as well as contact details of its steward, when it was created, when it was last updated, and a brief description of any new changes in the latest version.

You can find out the best ways to create metadata by [<u>reading metadata guidance published by the Data Standards Authority</u>](https://www.gov.uk/guidance/record-information-about-data-sets-you-share-with-others#metadata-you-should-record).

Sometimes, you’ll find that updating a reference data set instead requires publishing it as an entirely new reference data, as changing reference data that is already being used may cause systems or platforms that are using it to malfunction. For example, the UK Standard Industrial Classification of economic activities must still provide [<u>reference data for both 2003 and 2007 to suit different use cases</u>](https://www.ons.gov.uk/methodology/classificationsandstandards/ukstandardindustrialclassificationofeconomicactivities/).

When publishing a new version of a reference data set alongside an existing one, you should make sure that:

* the new version is published as a new, standalone reference data, and not a change or variant of the existing one
* both the existing and the new version are available to users
* correlation between the existing and new versions is made clear to users, preferably in an accompanying correlation document. For example, the UK Standard Industrial Classification of economic activities reference data is [<u>published</u> <u>by ONS</u>](https://www.ons.gov.uk/methodology/classificationsandstandards/ukstandardindustrialclassificationofeconomicactivities/uksic2007).

### Provide user support for your reference data

You should provide a simple way for users to give feedback or report errors when using your reference data, such as with an email link or web form.

Knowing who is consuming your reference data is very important. It allows you to provide better support to users and their community, including during upgrades, maintenance and unexpected downtime. A good way to know who is using your reference data is to encourage users to subscribe to it, for example by giving users the option to provide an email address when downloading it.

**:exclamation: You should [<u>follow the Open Data Charter</u>](https://www.gov.uk/government/publications/open-data-charter), and never require user registration to use your reference data, but let users decide whether they want to register or not.**

Your published reference data needs to be secure. This means it should be hosted in a secure environment and access to that environment managed
securely, [<u>using HTTPS</u>](https://www.gov.uk/service-manual/technology/using-https).

You can learn more about securing data by [<u>reading the GOV.UK Service Manual</u>](https://www.gov.uk/service-manual/technology/securing-your-information).
