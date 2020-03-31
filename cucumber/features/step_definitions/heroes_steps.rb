Then(/^"([^"]*)" details should be displayed$/) do |hero_name|
  on(HeroDetailsPage) { |page|
    expect(page).to have_details_for hero_name
  }
end

Given(/^the details for hero "([^"]*)" are displayed$/) do |hero_name|
  hero_id = 14 #This would be written to the database or looked up by name
  visit(HeroDetailsPage, using_params: {hero_id: hero_id})
end

When(/^I correct his name to be "([^"]*)"$/) do |new_hero_name|
  on(HeroDetailsPage) do |page|
    page.hero_name = new_hero_name
    page.save
  end
end