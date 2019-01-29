class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    vowel = ["a","e","i","o","u","A","E","I","O","U"]

      arr = word.split(" ")
      arr2 = arr.map do |ele| ele.split /([aeiouAEIOU].*)/ end

      arr2.map do |arr|
        arr << arr.shift
        end.map do |arr|
          if vowel.include?(arr[0][0]) && arr[1] == ""
            arr << "way"
          else
            arr << "ay"
          end
        end.map do |arr|
        arr.join("")
        end.join(" ")
      end
    end
