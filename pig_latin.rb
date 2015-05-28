class PigLatin

  def self.translation(word)
    caps = word =~ /^[A-Z]/
    length = word.index(/[aeiou]/i)
    if length
      prefix = word.slice(0, length)
      suffix = length == 0 ? 'yay' : prefix + 'ay'
      suffix.downcase!
      new_word = word[length..-1] + suffix
      new_word.capitalize! if caps
      new_word
    else
      word    
    end
end


  def self.translate(word)
    words = word.split
    words.map! {|word| PigLatin.translation(word)}
    done = words.join(" ")
  end

  # def self.capital_translate(word)
  #   words = word.split
  #   words.map! {|word| PigLatin.translation(word)}
  #   done = words.join(" ").downcase
  #   final = done.split.each{|i| i.capitalize!}.join(" ")
  # end

  # def self.capital_first_word_only_translate(word)
  #   words = word.split
  #   words.map! {|word| PigLatin.translation(word)}
  #   done = words.join(" ").capitalize
  # end  
end