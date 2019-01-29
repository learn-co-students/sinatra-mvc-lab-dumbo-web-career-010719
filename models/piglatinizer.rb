class PigLatinizer
  attr_reader :text

  def initialize
    @text
  end

  def piglatinize(text)
    text_arr = text.split(" ")
    return text_arr.map { |word| "#{latinize(word)}"}.join(" ")
  end

  def latinize(text)
    vowels = Set['a', 'e', 'i', 'o', 'u']
    
    if vowels.include?(text[0].downcase)
      return add_way(text)
    else
      return slice_text(text)
    end
  end

  def find_vowel(text)
    vowels = Set['a', 'e', 'i', 'o', 'u']
    
    text.split("").each_index{ |i| 
      if vowels.include?(text[i]) 
        return i
      end
    }
  end

  def slice_text(text)
    vowel_index = find_vowel(text)
    front = text[0...vowel_index]
    back = text[vowel_index..text.length]

    return "#{back}#{front}ay"
  end

  def add_way(text)
    return "#{text}way"
  end

end
