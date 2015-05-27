class PigLatin
  #VOWELS = %w[a e i o u]

  def self.translate(phrase)
    phrase.split.map { |word| translate_word(word) }.join(' ')
  end  

  def self.translate(word)
    length = word.index(/[aeiou]/)
    prefix = word.slice(0, length)
    suffix = length == 0 ? 'yay' : prefix + 'ay'

    word[length..-1] + suffix
  end
end


