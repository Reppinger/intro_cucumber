require 'watir'
require 'database_cleaner/active_record'
DatabaseCleaner.strategy = :truncation, {:only => %w[heroes]}

Before do |scenario|
  @browser = Watir::Browser.new :chrome
  DatabaseCleaner.clean
end

After do
  @browser.close
end