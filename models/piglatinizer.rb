require 'pry'
class PigLatinizer

  attr_reader :words

  def initialize(words='')
    @words = words
  end

  def split_words(words)
    word_array = words.split(' ')

    word_array.map do |word|
      self.piglatinize(word)
    end.join(' ')
  end

  def piglatinize(words)

    if words.split(' ').count > 1
      split_words(words)
    else
      if words[0] == words.match(/[aeiou]/i)[0]
        "#{words}way"
      else
        consonants = words.slice!(/[^aeiou]+/i)
        "#{words}#{consonants}ay"
      end
    end
  end


end
