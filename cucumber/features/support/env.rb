require 'rspec'
require 'page-object'
require 'fig_newton'
require 'active_record'
require 'data_magic'
require './features/support/database/hero'

ActiveRecord::Base.establish_connection(FigNewton.database.to_hash)
World(PageObject::PageFactory)
