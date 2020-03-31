class HeroDetailsPage
  include PageObject

  h2(:name, xpath: '//app-hero-detail/div/h2')

  def has_details_for?(hero_name)
    name.upcase == "#{hero_name} Details".upcase
  end

  end