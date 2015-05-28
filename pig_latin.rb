class PigLatin

  def self.translation(word)
    caps = word =~ /^[A-Z]/
    punct = word =~ /[^\w\s\d]/
    length = word.index(/[aeiou]/i)
    if punct
      end_mark = word[-1]
      word.gsub!(/[^\w\s\d]/, '')
    end
    if length
      prefix = word.slice(0, length)
      suffix = length == 0 ? 'yay' : prefix + 'ay'
      suffix.downcase!
      new_word = word[length..-1] + suffix
      new_word.capitalize! if caps
    if punct
        new_word.insert(-1, end_mark).split
    end
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
end