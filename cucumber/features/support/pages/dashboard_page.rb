class DashboardPage
  include PageObject
  page_url "http://localhost:4200/dashboard"

  h1(:name)
  link(:show_all_heroes, text: 'Heroes')

  def view_details_for(hero_name)
    @browser.h4(text: hero_name).click
  end
end