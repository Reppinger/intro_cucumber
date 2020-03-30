When(/^the Tour of Heroes dashboard is displayed$/) do
  visit(DashboardPage)
end

When(/^I view the details for top hero "([^"]*)"$/) do |hero_name|
  visit(DashboardPage).view_details_for_top_hero(hero_name)
end

When(/^I request the list of heroes from the Dashboard$/) do
  visit(DashboardPage).show_all_heroes
end

Then(/^the Tour of Heroes dashboard should be displayed$/) do
  on(DashboardPage) { |page|
    expect(page.name).to eq 'Tour of Heroes'
  }
end