require 'simplecov'
require 'coveralls'

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

formatters = [
  SimpleCov::Formatter::HTMLFormatter,
]

if ENV['CI']
  formatters.push Coveralls::SimpleCov::Formatter
end

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter::new(formatters)

SimpleCov.start do
end

require "one_hour_api"
