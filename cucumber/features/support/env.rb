require 'rspec'
require 'page-object'
require 'fig_newton'
require 'active_record'
require 'factory_bot'
require 'data_magic'
require './features/support/database/hero'

ActiveRecord::Base.establish_connection(FigNewton.database.to_hash)
ActiveRecord::ConnectionAdapters::SQLServerAdapter.lowercase_schema_reflection = true

World(PageObject::PageFactory)
World(FactoryBot::Syntax::Methods)

