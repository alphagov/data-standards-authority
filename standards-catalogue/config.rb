### Config from tech-docs-gem: start ###
require "middleman"
require "middleman-autoprefixer"
require "middleman-sprockets"
require "middleman-livereload"
require "middleman-search"

require "active_support/all"

require "lib/schemaorg"
require "lib/govuk_tech_docs/contribution_banner"
require "lib/govuk_tech_docs/meta_tags"
require "lib/govuk_tech_docs/tech_docs_html_renderer"
require "lib/govuk_tech_docs/unique_identifier_extension"
require "lib/govuk_tech_docs/unique_identifier_generator"

# Project setup
repo_name = "data-standards-authority"

activate :sprockets

sprockets.append_path File.expand_path("node_modules", __dir__)

files.watch :source, path: File.expand_path("source", __dir__)

set :markdown_engine, :redcarpet
set :markdown,
    renderer: GovukTechDocs::TechDocsHTMLRenderer.new(
      with_toc_data: true,
      context: self,
    ),
    fenced_code_blocks: true,
    tables: true,
    no_intra_emphasis: true

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

set(:govuk_assets_path, "/assets/govuk/assets/")

configure :build do
  set(:build_dir, "build/#{repo_name}")
  set(:http_prefix, "/#{repo_name}/")
  set(:govuk_assets_path, "/#{repo_name}/assets/govuk/assets/")
end

configure :build do
  activate :autoprefixer
  activate :minify_javascript, ignore: ["/raw_assets/*"]
end

config_file = ENV.fetch("CONFIG_FILE", "config/tech-docs.yml")
config[:tech_docs] = YAML.load_file(config_file).with_indifferent_access
activate :unique_identifier

helpers do
  include GovukTechDocs::ContributionBanner
  include SchemaOrg

  def meta_tags
    @meta_tags ||= GovukTechDocs::MetaTags.new(config, current_page)
  end

  def format_date(date)
    date.strftime("%-e %B %Y")
  end

  def active_page(page_path)
    [
      page_path == "/" && current_page.path == "index.html",
      ("/#{current_page.path}") == page_path,
      !current_page.data.parent.nil? && current_page.data.parent.to_s == page_path,
    ].any?
  end

  def display_organisation(id)
    if data.organisations[id]
      link_to data.organisations[id].name, data.organisations[id].url
    else
      raise "maintainer_id must match an entry in organisations.yml"
    end
  end

  def display_status(type, id)
    if data.statuses[type] && data.statuses[type][id]
      status = data.statuses[type][id]
      "<span class=#{status.styling}>#{status.name}</span>"
    else
      id
    end
  end

  def display_licence(id)
    licence = data.licences[id]
    if licence.url
      "<strong>#{licence.type} - <a href=#{licence.url}>#{licence.name}</a></strong>"
    else
      "<strong>#{licence.name}</strong>"
    end
  end

  def get_link_text(page)
    if page.data.title
      page.data.title
    elsif page.data.name
      page.data.name
    else
      page.path.delete_prefix("standards/").chomp("/index.html")
    end
  end

  def standard_to_schemaorg(page_data)
    SchemaOrg::Standard.new(data, page_data).to_json
  end
end

page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false
page "/standards/*/index.*", layout: "standards_table"
page "/taxonomies/*/index.*", layout: "taxonomy_table"

activate :search do |search|
  search.resources = [""]

  search.fields = {
    title: { boost: 100, store: true, required: true },
    content: { boost: 50, store: true },
    url: { index: false, store: true },
  }

  search.pipeline_remove = %w[stopWordFilter]

  search.tokenizer_separator = '/[\s\-/]+/'
end
### Config from tech-docs-gem: end ###
