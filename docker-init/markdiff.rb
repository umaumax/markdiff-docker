#!/usr/bin/env ruby
require "markdiff"

differ = Markdiff::Differ.new
a = File.open(ARGV[0])
b = File.open(ARGV[1])
node = differ.render(a.read, b.read)
a.close
b.close
puts node.to_html
