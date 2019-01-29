class PigLatinizer
  
  def piglatinize(string)
    split_strings = string.split(" ")
    split_strings.map do |word|
      translate(word)
    end.join(" ")
  end

  def translate(text)
    vowels = "aeiouAEIOU"
    if vowels.include?(text[0])
      return text + 'way'
    end

    text.each_char.with_index do |char, idx|
      if vowels.include?(char)
        before_vowel = text[0...idx]
        after_vowel = text[idx..-1]
        return after_vowel + before_vowel + "ay"
      end
    end
  end

end