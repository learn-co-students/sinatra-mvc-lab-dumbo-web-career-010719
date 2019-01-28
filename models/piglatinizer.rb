class PigLatinizer

  def piglatinize(text)
    words = text.split(" ")
    words.map{|word| piglatinize_word(word)}.join(" ")
  end

  #piglatinize word
  def piglatinize_word(word)
    first_vowel_i = word.downcase.split("").index{|c| ['a','e','i','o','u'].include?(c)}
    rotated_string = word.split("").rotate(first_vowel_i).join
    if first_vowel_i != 0
      rotated_string.concat("ay")
    else
      rotated_string.concat("way")
    end
  end
end
