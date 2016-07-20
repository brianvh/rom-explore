require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'] || 'development')
configurator = StandaloneMigrations::Configurator.new
ActiveRecord::Base.establish_connection(configurator.config_for(ENV['RACK_ENV']))
