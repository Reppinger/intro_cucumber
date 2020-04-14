class DashboardPage
  include PageObject
  page_url "#{FigNewton.base_url}/dashboard"

  h1(:name)
  div(:top_hero_container, class: ['grid', 'grid-pad'])
  links(:top_hero) do |page|
    page.top_hero_container_element.links
  end
  link(:show_all_heroes, text: 'Heroes')
  text_field(:hero_search, id: 'search-box')
  ul(:search_result_list, class: 'search-result')


  def wait_until_loaded
    self.top_hero_elements[0].wait_until { |element| element.present? }
  end

  def view_details_for_top_hero(hero_name)
    @browser.h4(text: hero_name).click
  end

  def search_results
    self.search_result_list_element.when_present
    self.search_result_list
  end
end