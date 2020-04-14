class HeroListPage
  include PageObject
  page_url "#{FigNewton.base_url}/heroes"

  ul(:heroes, class: 'heroes')

  def page_initialize
    # wait_until( heroes_element.items > 0)
  end

end