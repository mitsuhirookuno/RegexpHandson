#! /usr/bin/env ruby
# frozen_string_literal: true

require 'test/unit'

# FIXME
REGEXP = /fixme/.freeze

EXAMPLE = <<~EXAMPLE_INPUT.chomp
  example
EXAMPLE_INPUT

EXPECTED = ['example'].freeze

class TestExample < Test::Unit::TestCase
  def test_scan
    assert_match REGEXP, EXAMPLE
    assert_equal EXPECTED, EXAMPLE.scan(REGEXP)
  end
end
