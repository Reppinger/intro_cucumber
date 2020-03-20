class MyHeroesPage
  include PageObject
  page_url "http://localhost:4200/heroes"

  h2(:name)
  link(:go_to_dashboard, text: 'Dashboard')

  ul(:hero_container, class: 'heroes')
  links(:hero, xpath: '//app-heroes//a')
  # buttons(:delete_hero, xpath: '//app-heroes//button')

  def delete_hero(hero_name)
    hero_container_element.when_present
    delete_link = self.hero_elements.find { |link| link.text.include? hero_name}.next_sibling
    delete_link.click
  end
end