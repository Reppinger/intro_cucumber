Given(/^the following heroes:$/) do |hero_table|
  # table is a table.hashes.keys # => [:Name]
  hero_table.symbolic_hashes.each do |hero|
    create(:hero, hero)
  end
end

When(/^I view the hero list$/) do
  visit(HeroListPage)
end


Then(/^the following heroes should be displayed:$/) do |hero_table|
  on(HeroListPage) do |page|
    hero_table.symbolic_hashes.each do |hero|
      expect(page.heroes).to include hero[:name]
    end
  end
end