require 'simplecov'
require 'coveralls'

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start do
end

require "one_hour_api"
