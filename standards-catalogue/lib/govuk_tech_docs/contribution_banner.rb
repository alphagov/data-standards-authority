module GovukTechDocs
  # Helper included
  module ContributionBanner
    def source_urls
      SourceUrls.new(current_page, config)
    end
  end

  class SourceUrls
    attr_reader :current_page, :config

    def initialize(current_page, config)
      @current_page = current_page
      @config = config
    end

    def view_source_url
      override_from_page || source_from_yaml_file || source_from_file
    end

    def report_issue_url
      url = config[:source_urls]&.[](:report_issue_url)

      params = {
        body: "Feedback on '#{current_page.data.title}' (#{config[:tech_docs][:host]}#{current_page_url})",
      }

      if url.nil?
        url = "#{repo_url}/issues/new"
        params["labels"] = "bug"
        params["title"] = "Re: '#{current_page.data.title}'"
      else
        params["subject"] = "Re: '#{current_page.data.title}'"
      end
      "#{url}?#{URI.encode_www_form(params)}"
    end

    def repo_url
      "https://github.com/#{config[:tech_docs][:github_repo]}"
    end

    def repo_branch
      config[:tech_docs][:github_branch] || "main"
    end

    def project_name
      config[:tech_docs][:project_name] || "standards-catalogue"
    end

    # If an author_email is specified in the frontmatter, use that;
    # otherwise use the default from tech-docs.yml
    def contact_email
      email = current_page.data.author_email || config[:tech_docs][:contact_email]

      params = {
        subject: "Feedback on '#{current_page.data.title}' (#{config[:tech_docs][:host]}#{current_page_url})",
      }

      "mailto:#{email}?#{URI.encode_www_form(params)}"
    end

  private

    # If a `page` local exists, see if it has a `source_url`. This is used by the
    # pages that are created by the proxy system because they can't use frontmatter
    def override_from_page
      locals.key?(:page) ? locals[:page].try(:source_url) : false
    end

    # In the frontmatter we can specify a `source_url`. Use this if the actual
    # source of the page is in another GitHub repo.
    def source_from_yaml_file
      current_page.data.source_url
    end

    # As the last fallback link to the source file in this repository.
    def source_from_file
      "#{repo_url}/blob/#{repo_branch}/content/#{current_page.file_descriptor[:relative_path]}"
    end

    def locals
      current_page.metadata[:locals]
    end

    def current_page_url
      # remove the prefix that appears on the published site, breaking contribution links
      current_page.url
        .sub(/\/data-standards-authority/, "")
    end
  end
end
