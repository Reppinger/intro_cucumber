class DashboardPage
  include PageObject
  page_url "http://localhost:4200/dashboard"

  h1(:name)
  div(:top_hero_container, class: ['grid', 'grid-pad'])
  links(:top_hero) do |page|
    page.top_hero_container_element.links
  end
  link(:show_all_heroes, text: 'Heroes')
  text_field(:hero_search, id: 'search-box')
  ul(:search_result_list, class: 'search-result')

  def initialize(browser, visit)
    super(browser,visit)
    wait_until_loaded
  end

  def view_details_for_top_hero(hero_name)
    hero_link = self.top_hero_elements.find { |link| link.text.include? hero_name}
    hero_link.click
  end

  def search_results
    self.search_result_list_element.when_present
    self.search_result_list
  end

  private

  def wait_until_loaded
    wait_for_first_top_hero
  end

  def wait_for_first_top_hero
    self.top_hero_elements[0].wait_until { |element| element.present? }
  end
end