class MyHeroesPage
  include PageObject
  page_url "http://localhost:4200/heroes"

  h2(:name)
  link(:go_to_dashboard, text: 'Dashboard')

  ul(:hero_container, class: 'heroes')
  links(:hero, xpath: '//app-heroes//a') do |page|
    page.hero_container_element.links
  end

  def has_hero?(hero_name)
    find_hero_link(hero_name) != nil
  end

  def view_details_for(hero_name)
    hero_link = find_hero_link(hero_name)
    hero_link.click
  end

  def delete(hero_name)
    delete_link = find_hero_link(hero_name).next_sibling
    delete_link.click
  end

  private

  def find_hero_link(hero_name)
    hero_container_element.when_present
    self.hero_elements.find { |link| link.text.include? hero_name }
  end
end