$LOAD_PATH << File.expand_path('../lib', __dir__)

require 'simplecov'
SimpleCov.command_name 'rspec'
SimpleCov.start

# Pull in all of the gems including those in the `test` group
require 'bundler'
Bundler.require :default, :test, :development

require 'middleman-sprockets/extension'

Dir.glob(File.expand_path('support/*', __dir__)).each { |f| require_relative f }

include Middleman::Sprockets
