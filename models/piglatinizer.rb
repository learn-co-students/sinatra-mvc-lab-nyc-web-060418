class PigLatinizer

  @@all = []

  def initialize(params={})
    @words = params[:words]
    @@all << self
  end

  def self.all
    @@all
  end

  def piglatinize(word)

    array = word.split(' ').map do |word|

      if word[0].match(/[aeiouAEIOU]/)
        "#{word}way"
      else
        c_letters = ''
        last_c_index = nil
        idx = 0
        word.each_char do |letter|
          unless letter.match(/[aeiouAEIOU]/)
            c_letters = c_letters + letter
            last_c_index = idx
            idx += 1
          else
            break
          end
        end
        "#{word[(last_c_index+1)..-1]}#{word[0..last_c_index]}ay"
      end

    end

    array.join(' ')
  end





end
