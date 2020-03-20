Then(/^the list of heroes should be displayed$/) do
  on(MyHeroesPage) { |page|
    expect(page.name).to eq 'My Heroes'
  }
end


Then(/^"([^"]*)" details should be displayed$/) do |hero_name|
  on(HeroDetailsPage) { |page|
    expect(page).to have_details_for hero_name
  }
end

And(/^I use the menu to return to the Dashboard$/) do
  on(MyHeroesPage).go_to_dashboard
end

When(/^I delete "([^"]*)" from the list of heroes$/) do |hero_name|
  visit(MyHeroesPage).delete_hero hero_name
end