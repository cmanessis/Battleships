# Generated by cucumber-sinatra. (2015-05-12 19:52:47 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/battleshipsWeb.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = BattleshipsWeb

class BattleshipsWebWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  BattleshipsWebWorld.new
end
