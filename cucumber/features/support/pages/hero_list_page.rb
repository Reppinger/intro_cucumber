class HeroListPage
  include PageObject
  page_url "#{FigNewton.base_url}/heroes"

  ul(:heroes, class: 'heroes')

end