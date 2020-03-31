class DashboardPage
  include PageObject
  page_url "http://localhost:4200/dashboard"

  h1(:name)
  link(:show_all_heroes, text: 'Heroes')
  text_field(:hero_search, id: 'search-box')
  ul(:search_result_list, class: 'search-result')

  def view_details_for_top_hero(hero_name)
    @browser.h4(text: hero_name).click
  end

  def search_results
    self.search_result_list_element.when_present
    self.search_result_list
  end
end