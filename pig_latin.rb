class PigLatin

  def self.translation(word)
    length = word.index(/[aeiou]/)
    prefix = word.slice(0, length)
    suffix = length == 0 ? 'yay' : prefix + 'ay'

    word[length..-1] + suffix
end


  def self.translate(word)
    words = word.split
    words.map! {|word| PigLatin.translation(word)}
    done = words.join(" ")
  end

  def self.capital_translate(word)
    words = word.split
    words.map! {|word| PigLatin.translation(word)}
    done = words.join(" ").downcase
    final = done.split.each{|i| i.capitalize!}.join(" ")
  end

  def self.capital_first_word_only_translate(word)
    words = word.split
    words.map! {|word| PigLatin.translation(word)}
    done = words.join(" ").capitalize
  end  

end