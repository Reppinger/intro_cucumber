Then(/^"([^"]*)" details should be displayed$/) do |hero_name|
  on(HeroDetailsPage) { |page|
    expect(page).to have_details_for hero_name
  }
end
