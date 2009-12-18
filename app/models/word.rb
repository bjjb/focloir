class Word < ActiveRecord::Base
  before_save :sanitize_word!
  before_create :lookup_definition!

  def to_param
    word
  end

  @@default_source = "http://dictionary.reference.com/browse"
  class << self
    attr_writer :source
    def source; @source ||= @@default_source; end
  end
  attr_writer :source
  def source; @source ||= self.class.source; end

private
  def sanitize_word!
    self.word = URI::unescape(word.strip.downcase).gsub('+', ' ')
  end

  def lookup_definition!
    if definition.blank?
      logger.debug "Looking up '#{word}' on #{source}"
      page = open("#{source}/#{URI::escape(word)}").read
      self.definition = Nokogiri(page).search('div.pbk').collect(&:to_s).join
    end
  end
end
