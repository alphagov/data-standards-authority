---
title: api.gov.uk Domain Guidance
weight: 850
keywords: 'API Domains'
identifier: DSA-005
name: APIDomains
organisation: Data Standards Authority
author_email: api-programme@digital.cabinet-office.gov.uk
status: active
startDate: 2019-07-17
dateAdded: 2021-05-24
dateUpdated: 2021-01-19
---

## The most recent version of this document is published on [GOV.UK](https://www.gov.uk/guidance/get-an-api-domain-on-govuk)


# Get an API domain on GOV.UK

Contact the Government Digital Service (GDS) to get a domain for your API on GOV.UK.

You can contact the Government Digital Service (GDS) to get a domain for your API on GOV.UK.

You should only apply for an API domain after making sure your API meets the government’s [API technical and data standards](https://www.gov.uk/guidance/gds-api-technical-and-data-standards). If there are reasons for your API not meeting particular standards, you’ll need to discuss this with GDS as part of your application.

## Before you apply

You must [appoint a domain name administrator](https://www.gov.uk/guidance/appoint-a-govuk-domain-name-administrator) to register and manage the domain. They will be responsible for:

-   choosing a Domain Name Service (DNS) provider - you can search for DNS providers on the [Digital Marketplace](https://www.gov.uk/digital-marketplace) and read our guidance on [choosing a good DNS provider](https://www.gov.uk/guidance/choose-a-good-registrar-or-dns-provider)
-   managing the DNS servers
-   managing Transport Layer Security (TLS) certificates for each API domain

Your domain name administrator must have the authority to apply for a .api.gov.uk domain name on behalf of your organisation. Read the guidance on [getting written permission](https://www.gov.uk/guidance/get-permission-to-apply-for-a-govuk-domain-name) for more information.

#### You must use a role-based email address in a public sector domain like ‘servicedesk@example.gov.uk’. Do not use an individual’s email address.

GDS will need to be able to contact your domain name administrator, so you must keep this contact up to date. Make sure to regularly check that the email address is still active, and let GDS know if any contact details change.

## Apply for your domain

### 1\. Request the API domain from GDS

Your domain name administrator will need to contact GDS at [api-domain-requests@digital.cabinet-office.gov.uk](mailto:api-domain-requests@digital.cabinet-office.gov.uk) with:

-   your chosen domain name
-   a role-based email address and phone number
-   [written permission from your organisation](https://www.gov.uk/guidance/get-permission-to-apply-for-a-govuk-domain-name) showing authorisation to apply for the domain name

GDS will contact you to confirm that you’ll:

-   be running a single API off your domain
-   follow the versioning practices and other standards set out in the [API technical and data standards](https://www.gov.uk/guidance/gds-api-technical-and-data-standards)

GDS will contact you to confirm the status of your application.

### 2\. Set up and activate your API domain

Your DNS provider will have given you several DNS name server (NS) records. After GDS has approved your domain, send your NS records to [api-domain-requests@digital.cabinet-office.gov.uk](mailto:api-domain-requests@digital.cabinet-office.gov.uk) so GDS can delegate the domain.

You must send at least 2 NS records for your domain, but you should send more if you can. Providing multiple NS records means that if one goes down, the DNS can look at the next one on the list.

You must also add your API to the government’s [API Catalogue](https://www.api.gov.uk/) to help users find your API and show that your API meets government standards.

### 3\. Secure your API and domain

You will need to keep your API and its domain name secure. You must:

-   use TLS v1.2 or above - do not use Secure Sockets Layer (SSL) or older versions of TLS
-   [use HTTPS](https://www.gov.uk/service-manual/technology/using-https), not HTTP - this will secure connections to your API, preserve user privacy, ensure data integrity and authenticate the server providing the API
-   avoid sending emails from .api.gov.uk subdomains - GDS has set top-level [SPF](https://www.gov.uk/government/publications/email-security-standards/sender-policy-framework-spf) and [DMARC](https://www.gov.uk/government/publications/email-security-standards/domain-based-message-authentication-reporting-and-conformance-dmarc) rules to discard any that do get sent
-   follow guidance on [keeping your domain protected from spoofing attacks](https://www.gov.uk/guidance/protect-domains-that-dont-send-email)
-   use a Certification Authority Authorisation (CAA) record on your .api.gov.uk domain - this stops attackers from getting another certificate authority to issue a certificate for the domain
-   comply with the [Minimum Cyber Security Standard](https://www.gov.uk/government/publications/the-minimum-cyber-security-standard) when managing your DNS entries

If you’re hosting documentation or any other browser-based content, you must enable HTTP Strict Transport Security (HSTS) for your entire subdomain, including the includeSubDomains flag.

You can find out more about [keeping your domain name secure](https://www.gov.uk/guidance/keeping-your-domain-name-secure).

### 4\. Manage your API and domain

Keep GDS updated about any changes to the management or ownership of the domain by emailing [api-domain-requests@digital.cabinet-office.gov.uk](mailto:api-domain-requests@digital.cabinet-office.gov.uk).

You must decommission your API and domain name when they are no longer needed, for example if the service they support shuts down.

When decommissioning your API domain, make sure you:

-   give users of your APIs enough notice to update their service
-   contact GDS to decommission your API domain name
-   update your API documentation to say when you’re deprecating and retiring the API - you can also put a deprecation notice in your HTTP headers

## Hosting your API documentation

It’s best practice to keep your [API documentation](https://www.gov.uk/guidance/how-to-document-apis) on the same domain as your API as they are part of the same product.

GDS recommends publishing your documentation as a subdirectory of your domain, for example at name-of-api.api.gov.uk/docs. Using subdirectories means it’s easier to structure and version your documentation. Use consistent naming convention for your documentation across all your published APIs.

Keep your documentation up to date with the correct endpoint URLs, and make sure the API Catalogue lists the correct URL to your documentation.

## Getting operations support

If you have an issue you cannot resolve with your DNS supplier, you can email the GOV.UK team at [hostmaster@digital.cabinet-office.gov.uk](mailto:hostmaster@digital.cabinet-office.gov.uk). The team is available on weekdays between 9am and 5pm.

If you have an emergency outside of these hours, you must contact your organisation’s single point of contact (SPOC) who will contact the support team for you.
