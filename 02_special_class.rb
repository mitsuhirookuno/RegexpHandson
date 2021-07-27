#! /usr/bin/env ruby
# frozen_string_literal: true

require 'test/unit'

# FIXME
REGEXP = /[0-9a-zA-Z]/.freeze

EXAMPLE = <<~EXAMPLE_INPUT.chomp
01233456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ
EXAMPLE_INPUT

EXPECTED = EXAMPLE.chars

class TestExample < Test::Unit::TestCase
  def test_scan
    assert_match REGEXP, EXAMPLE
    assert_equal EXPECTED, EXAMPLE.scan(REGEXP)
    assert(REGEXP.to_s.size <= 12)
  end
end
