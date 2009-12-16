require 'open-uri'
require 'nokogiri'
class DictionaryCom
  def lookup(word)
    self.class.lookup(word)
  end

  def self.lookup(word)
    word = URI::escape(word.strip.downcase)
    page = open("http://dictionary.reference.com/browse/#{word}").read
    Nokogiri(page).search('div.pbk').collect(&:to_s).join
  end
end
