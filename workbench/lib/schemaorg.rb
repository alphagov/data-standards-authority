module SchemaOrg
  class Base
    attr_accessor :obj

    # Middleman uses ActiveSupport's JSON encoder, which requires `as_json` to produce the hash representation of the object
    def as_json(_options = {})
      @obj
    end
  end

  class Standard < SchemaOrg::Base
    def initialize(data, page_data)
      super()

      categories = categories(data, page_data)
      licence_info = SchemaOrg::Licence.new(data, page_data.licence_id)
      maintainer_info = SchemaOrg::Organisation.new(data, page_data.maintainer_id)
      endorsement_status = page_data.endorsement_status_events.last.status
      specification = SchemaOrg::Specification.new(page_data.name, page_data.specification_url)

      @obj = {
        "@context": "https://schema.org/",
        "@type": "Thing",
        "name": page_data.name,
        "contraction": page_data.contraction,
        "isBasedOn": specification,
        "license": licence_info, # this needs to be US spelling
        "category": categories,
        "maintainer": maintainer_info,
        "endorsementStatus": endorsement_status,
      }
    end

  private

    def categories(data, page_data)
      page_data.tags.map do |tag|
        data.tags[tag].name
      end
    end
  end

  class Organisation < SchemaOrg::Base
    def initialize(data, organisation_id)
      super()

      organisation = data.organisations[organisation_id]

      @obj = {
        "@context": "https://schema.org",
        "@type": "Organization",
        "name": organisation.name,
        "url": organisation.url,
      }
    end
  end

  class Licence < SchemaOrg::Base
    def initialize(data, licence_id)
      super()

      licence = data.licences[licence_id]
      @obj = {
        "@context": "https://schema.org",
        "@type": "CreativeWork",
        "name": licence.name,
      }
      @obj["url"] = licence.url if licence.url
    end
  end

  class Specification < SchemaOrg::Base
    def initialize(name, specification_url)
      super()

      @obj = {
        "@context": "https://schema.org",
        "@type": "CreativeWork",
        "name": name,
        "url": specification_url,
      }
    end
  end
end
