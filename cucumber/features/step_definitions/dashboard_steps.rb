When(/^The Tour of Heros dashboard is displayed$/) do
  visit(DashboardPage)
end

Then(/^the application name "([^"]*)" is displayed$/) do |expected_name|
  on(DashboardPage) do |page|
    expect(page.name).to eq expected_name
  end
end