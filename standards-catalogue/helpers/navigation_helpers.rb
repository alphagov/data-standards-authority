module NavigationHelpers
  def populate_navbar(resources)
    root_page = resources.detect { |r| r.path == "index.html" }
    top_level_pages = navigable_pages(root_page.children).sort_by { |page| page.data.weight || 99_999 }
    navigation = []

    navigation << navigation_html(root_page)
    navigation += top_level_pages.map { |page| navigation_html(page) }
    navigation.join
  end

private

  def navigable_pages(resources)
    resources
      .filter { |resource| resource.ext.match?("html") }
      .reject { |resource| resource.data.hide_in_navigation }
  end

  def navigation_html(page)
    unless page.data.title.include? "DSA"
      <<~HTML
        <li>
          <a href="#{page.url}"><span>#{page.data.title}</span></a>
          #{yield if block_given?}
        </li>
      HTML
    end
  end
end
