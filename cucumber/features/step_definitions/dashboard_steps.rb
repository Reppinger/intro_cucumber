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

When(/^I search for "([^"]*)" from the Heroes dashboard$/) do |search_text|
  visit(DashboardPage).hero_search = search_text
end

Then(/^a search result of "([^"]*)" should appear$/) do |expected_search_result|
  on(DashboardPage) do |page|
    expect(page.search_results).to include(expected_search_result)
  end
end

Then(/^the following top heroes should be displayed:$/) do |heroes_table|
  dashboard_page = on(DashboardPage)
  sleep 10
  heroes_table.hashes.each do |hero_row|
    expect(dashboard_page.text).to include hero_row[:hero_name]
  end
end