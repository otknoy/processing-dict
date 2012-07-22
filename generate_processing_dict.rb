#!/usr/bin/ruby
require 'open-uri'
require 'hpricot'

uri = 'http://processing.org/reference/'

doc = Hpricot(open(uri))

(doc/"div.category//a").each do |a|
  word = a.inner_text

  word.gsub!(/\s?\(.*\)$/, "")

  next if word.length <=2

  puts word


end
