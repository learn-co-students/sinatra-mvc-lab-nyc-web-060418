require 'pry'

class PigLatinizer

  attr_reader :phrase

  def initialize(phrase = '')
    @phrase = phrase
  end

  def split_phrase
    sentence = self.phrase
    array = words.split(' ')
  end

  def piglatinize(words)
    array = words.split(' ')
    vowles = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    final_array = []
    array.map do |word|
    first_letter = word[0]
    if vowles.index(first_letter) != nil
      new_word = word + 'way'
      final_array << new_word
    elsif vowles.index(word[1]) != nil
      word_split = word[1..-1]
      new_word = word_split + first_letter + 'ay'
      final_array << new_word
    else
      counter = 1
    while counter < word.length
      if vowles.index(word[counter]) != nil
        new_word = word[counter..-1]
        final_word = new_word + word[0..(counter-1)] + 'ay'
        final_array << final_word
        break
      end
      counter += 1
    end
  end
end
  final_array.join(' ')
end

end
