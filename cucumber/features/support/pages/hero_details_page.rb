class HeroDetailsPage
  include PageObject
  page_url "http://localhost:4200/detail/<%=params[:hero_id]%>"

  h2(:name, xpath: '//app-hero-detail/div/h2')
  text_field(:hero_name)
  button(:save, text: 'save')

  def has_details_for?(hero_name)
    name.upcase == "#{hero_name} Details".upcase
  end

end