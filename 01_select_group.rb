#! /usr/bin/env ruby
# frozen_string_literal: true

require 'test/unit'

# FIXME
# REGEXP = /(fukurou-labo\.co\.jp|x-dashboard\.cir\.io)/.freeze
REGEXP = /((fukurou-labo|x-dashboard)\.(co\.jp|cir\.io))/.freeze

EXAMPLE = <<~EXAMPLE_INPUT.chomp
  fukurou-labo.co.jp
  x-dashboard.cir.io
  fukurou-labo_co9jp
  x-dashboard cir io
EXAMPLE_INPUT

EXPECTED = ['fukurou-labo.co.jp', 'x-dashboard.cir.io'].freeze

class TestExample < Test::Unit::TestCase
  def test_scan
    assert_match REGEXP, EXAMPLE
    assert_equal EXPECTED, EXAMPLE.scan(REGEXP).map(&:first)
    assert(REGEXP.to_s.size <= 54)
  end
end
