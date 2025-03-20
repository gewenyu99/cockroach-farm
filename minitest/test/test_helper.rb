require 'minitest/autorun'
require "minitest/reporters"

# Set up colorized output for test results
Minitest::Reporters.use! [Minitest::Reporters::JUnitReporter.new]

# Add lib directory to the load path
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

