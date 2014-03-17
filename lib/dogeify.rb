require "dogeify/version"
require "engtagger"

class Dogeify
  ADJECTIVES = %w(so such very much many).freeze
  
  def initialize
    @tags = EngTagger.new
  end

  def process(input)
    input.downcase!
    tagged_input = @tags.add_tags(input)
    phrases = @tags.get_nouns(tagged_input).keys
    phrases = phrases.each_with_index.map do |phrase, i|
      "#{adjective(i)} #{phrase}."
    end
    phrases << 'wow.'
    phrases.join(' ')
  end

  private

  def adjective(i)
    ADJECTIVES[i % ADJECTIVES.size]
  end
end
