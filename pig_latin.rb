class PigLatin

  def translate(words)  #isolate
    words = words.split 
    translation = [] #new array to insert each translated word
    words.each do |word|
    end

    if word[0] =~ /[aeiou]/
      word = word + 'yay'
    elsif
     word = word[word.index(/[aeiou]/)..- 1] + word[0..- 1] + 'ay' 
   end
   translation << word
 end
 translation.join(" ")
end


