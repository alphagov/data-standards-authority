module SchemaOrg
  class Standard
    def initialize(page, data)
      @page = page
      @data = data

      @obj = {
        "@context": "https://schema.org/",
        "@type": "Thing", # TODO
        name: name,
      }
    end

    def name
      if @page.data.title
        @page.data.title
      elsif @page.data.name
        @page.data.name
      end
    end

    def to_json(*_args)
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

      add_if_present(:topic)
      add_if_present(:category)
      add_if_present(:reference) # TODO: type?
      add_if_present(:identifier) # TODO: type?
      add_if_present(:status) # TODO: type
      add_if_present(:dateCreated, :dateAdded)
      add_if_present(:dateModified, :dateUpdated)
      add_if_present(:classification, :classification) # TODO: type
      # TODO: keywords
      # TODO: link
      # TODO: supersededBy
      # TODO: startDate
      # TODO: validFrom
      # TODO: subject
      # TODO: reference

      @obj.to_json
    end

    def add_organisation
      @obj[:organisation] = to_organisation if @page.data.organisation
    end

    def to_organisation(page, _data)
      org = @data.organisations[page.data.organisation]
      return page.data.organisation unless org

      {

        "@context": "https://schema.org",
        "@type": "Organization",
        "name": org.name,
        "url": org.url,
      }
    end

    def add_if_present(page_and_schema_key)
      add_if_present(page_and_schema_key, page_and_schema_key)
    end

    def add_if_present(page_key, schema_key)
      @obj[schema_key] = @page.data[page_key] if @page.data[page_key]
    end
  end
end
