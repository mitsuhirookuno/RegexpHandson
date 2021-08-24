#! /usr/bin/env ruby
# frozen_string_literal: true

require 'test/unit'
require 'pp'

# FIXME
# REGEXP = /<(div|p)>.*<\/\1>/.freeze
REGEXP = /<(.+)>.*<\/\1>/.freeze

EXAMPLE = <<~EXAMPLE_INPUT.chomp
<div>hoge</div>
<p>foobar</p>
EXAMPLE_INPUT

EXPECTED = ['div', 'p'].freeze

class TestExample < Test::Unit::TestCase
  def test_scan
    assert_match REGEXP, EXAMPLE
    assert_equal EXPECTED, EXAMPLE.scan(REGEXP).map(&:first)
  end
end
