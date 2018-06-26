class PigLatinizer

  def piglatinize(text)
    text_arr = text.split(' ')
    text_arr.map! do |word|
      first_vowel_index = nil
      word.each_char.with_index do |c, i|
        if c.match? /[AEIOUaeiou]/
          first_vowel_index = i
          break
        end
      end
      if first_vowel_index == 0
        word + 'way'
      else
        word[first_vowel_index..-1] + word[0...first_vowel_index] + 'ay'
      end
    end
    text_arr.join(' ')
  end

end
