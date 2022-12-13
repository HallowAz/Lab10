require 'nokogiri'

doc = Nokogiri::XML(File.read('public/test.xml'))
xslt = Nokogiri::XSLT(File.read('public/some_transformer.xslt'))

puts xslt.transform(doc)