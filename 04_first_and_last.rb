#! /usr/bin/env ruby
# frozen_string_literal: true

require 'test/unit'

# FIXME
REGEXP = /^(hoge\.[a-z]+\.io)$/.freeze

EXAMPLE = <<~EXAMPLE_INPUT.chomp
hoge.cir.io
hoge.hoge.io
nothoge.hoge.io
EXAMPLE_INPUT

EXPECTED = ["hoge.cir.io", "hoge.hoge.io"]


class TestExample < Test::Unit::TestCase
  def test_scan
    assert_match REGEXP, EXAMPLE
    assert_equal EXPECTED, EXAMPLE.scan(REGEXP).map(&:first)
  end
end
