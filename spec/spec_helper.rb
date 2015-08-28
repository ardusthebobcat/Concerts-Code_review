ENV['RACK-ENV'] = 'test'

require('sinatra/activerecord')
require('rspec')
require('band')
require('venue')
require('pg')

RSpec.configure do |config|
  config.after(:each) do
    Venue.all().each() do |venue|
      venue.destroy()
    end
    Band.all().each() do |band|
      band.destroy()
    end
  end
end
