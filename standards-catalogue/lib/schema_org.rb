class SchemaOrg
  # TODO: stateful
  def name(page)
    if page.data.title
      page.data.title
    elsif page.data.name
      page.data.name
    end
  end

  def from_standard(page, data)
    # ---
    # topic: 5.5 Payment
    # subject: Payments Clearing and Settlement
    # organisation:	ISO
    # reference:	ISO 20022
    # identifier:	pacs
    # name: Universal financial industry message scheme
    # status: draft
    # dateAdded: 2021-02-02
    # dateUpdated: 2021-02-02
    # classification: Domain Specific
    # ---

    obj = {
      "@context": "https://schema.org/",
      "@type": "Thing", # TODO
      name: name(page),
    }

    add_if_present(:topic, :topic, page, obj)
    add_if_present(:category, :category, page, obj)
    add_if_present(:reference, :reference, page, obj) # TODO: type?
    add_if_present(:identifier, :identifier, page, obj) # TODO: type?
    add_if_present(:status, :status, page, obj) # TODO: type
    add_if_present(:dateCreated, :dateAdded, page, obj)
    add_if_present(:dateModified, :dateUpdated, page, obj)
    add_if_present(:classification, :classification, page, obj) # TODO: type

    obj[:organisation] = to_organisation(page, data) if page.data.organisation

    obj.to_json
  end

  def to_organisation(page, data)
    o = page.data.organisation
    return o unless data.organisations[o]

    {

      "@context": "https://schema.org",
      "@type": "Organization",
      "name": data.organisations[o].name,
      "url": data.organisations[o].url,
    }
  end

  def add_if_present(page_key, schema_key, page, obj)
    obj[schema_key] = page.data[page_key] if page.data[page_key]
  end
end
