#! /usr/bin/env ruby
# frozen_string_literal: true

require 'test/unit'

# FIXME
REGEXP = /(\w{4,}\.x-dashboard(-dev)?\.cir\.io)/.freeze

EXAMPLE = <<~EXAMPLE_INPUT.chomp
ocean.x-dashboard-dev.cir.io
hoge.x-dashboard.cir.io
example.com/www.x-dashboard.cir.io
EXAMPLE_INPUT

EXPECTED = ['ocean.x-dashboard-dev.cir.io', 'hoge.x-dashboard.cir.io']


class TestExample < Test::Unit::TestCase
  def test_scan
    assert_match REGEXP, EXAMPLE
    assert_equal EXPECTED, EXAMPLE.scan(REGEXP).map(&:first)
  end
end
