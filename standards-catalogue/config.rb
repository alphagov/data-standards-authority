require "lib/url_helpers"

### Config from tech-docs-gem: start ###
require "middleman"
require "middleman-autoprefixer"
require "middleman-sprockets"
require "middleman-livereload"
require "middleman-search"

require "active_support/all"

require "lib/schema_org"

require "lib/govuk_tech_docs/contribution_banner"
require "lib/govuk_tech_docs/meta_tags"
require "lib/govuk_tech_docs/tech_docs_html_renderer"
require "lib/govuk_tech_docs/unique_identifier_extension"
require "lib/govuk_tech_docs/unique_identifier_generator"

# Project setup
project_name = "standards-catalogue"
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
  set(:build_dir, "build/#{repo_name}/#{project_name}")
  set(:http_prefix, "/#{repo_name}/#{project_name}/")
  set(:govuk_assets_path, "/#{repo_name}/#{project_name}/assets/govuk/assets/")
end

configure :build do
  activate :autoprefixer
  activate :minify_javascript, ignore: ["/raw_assets/*"]
end

config_file = ENV.fetch("CONFIG_FILE", "config/tech-docs.yml")
config[:tech_docs] = YAML.load_file(config_file).with_indifferent_access
activate :unique_identifier

helpers do
  include SchemaOrg
  include GovukTechDocs::ContributionBanner

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
      id
    end
  end

  def display_status(id)
    if data.statuses[id]
      data.statuses[id].name
    else
      id
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

  def standard_to_schema(page)
    standard = SchemaOrg::Standard.new(page, data)
    standard.to_json
  end
end

page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false
page "/standards/*/index.*", layout: "standards_table"

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

helpers UrlHelpers

# catalogue_csv = File.expand_path("data/catalogue.csv", __dir__)
# organisation_csv = File.expand_path("data/organisation.csv", __dir__)
# api_catalogue = ApiCatalogue.from_csv(catalogue_csv: catalogue_csv, organisation_csv: organisation_csv)

# Order organisations from A-Z in the Table of Contents,
# leaving a buffer from 0-999 for static content to be given priority
# initial_org_weight = 1_000

# api_catalogue.organisations_apis.each.with_index(initial_org_weight) do |(organisation, apis), org_weight|
#   proxy(
#     UrlHelpers.organisation_path(organisation),
#     "organisation_index.html",
#     locals: { organisation: organisation, apis: apis },
#     data: {
#       title: organisation.name,
#       weight: org_weight,
#     },
#     ignore: true,
#   )

#   apis.each_with_index do |api, api_weight|
#     proxy(
#       UrlHelpers.api_path(organisation: organisation, api: api),
#       "api_details.html",
#       locals: { api: api },
#       data: {
#         title: api.name,
#         weight: api_weight,
#       },
#       ignore: true,
#     )
#   end
# end

# proxy(
#   "/dashboard/index.html",
#   "dashboard.html",
#   locals: { dashboard_stats: DashboardStats.new(api_catalogue) },
#   ignore: true,
# )

# proxy(
#   "/index/index.html",
#   "overview_index.html",
#   locals: { overview: ApiCatalogueOverview.new(api_catalogue) },
#   ignore: true,
# )
