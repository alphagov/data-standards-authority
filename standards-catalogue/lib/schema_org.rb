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

      add_if_present(:topic)
      add_if_present(:category)
      add_if_present(:reference) # TODO: type?
      add_if_present(:identifier) # TODO: type?
      add_if_present(:status) # TODO: type
      add_if_present(:dateCreated, :dateAdded)
      add_if_present(:dateModified, :dateUpdated)
      add_if_present(:classification, :classification) # TODO: type
      add_if_present(:keywords) # TODO
      add_if_present(:link) # TODO
      add_if_present(:supersededBy) # TODO
      add_if_present(:isRelatedTo) # TODO
      add_if_present(:validFrom) # TODO
      add_if_present(:startDate)
      add_if_present(:subject)
    end

    def to_json(*args)
      # Dir.glob('source/standards/**/*.md').map {|f| (YAML.load_file f).keys }.flatten.uniq
      @obj.to_json(args)
    end

  private


    def name
      if @page.data.title
        @page.data.title
      elsif @page.data.name
        @page.data.name
      end
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

    def add_if_present(page_key, schema_key = page_key)
      @obj[schema_key] = @page.data[page_key] if @page.data[page_key]
    end
  end
end
