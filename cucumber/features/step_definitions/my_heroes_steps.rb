When(/^I view from My Heroes the details for "([^"]*)"$/) do |hero_name|
  visit(MyHeroesPage).view_details_for hero_name
end

When(/^I delete "([^"]*)" from the list of heroes$/) do |hero_name|
  visit(MyHeroesPage).delete hero_name
end

Then(/^the list of heroes should be displayed$/) do
  on(MyHeroesPage) { |page|
    expect(page.name).to eq 'My Heroes'
  }
end

Then(/^I use the menu to return to the Dashboard$/) do
  on(MyHeroesPage).go_to_dashboard
end
