require 'pry'
class PigLatinizer
  def piglatinize(val)
    arr = val.split(" ")
    new_arr = arr.map{ |word|
      l_text = ""
      beg_text = ""
      i = 0
      word = word.split("")
      if word[0].downcase == "a" || word[0].downcase == "e" || word[0].downcase == "i" || word[0].downcase == "o" || word[0].downcase == "u"
        beg_text = "#{word.join('')}way"
      else
        until word[i].include?("a") || word[i].include?("e") || word[i].include?("i") || word[i].include?("o") || word[i].include?("u")
          l_text += word[i]
          i += 1
        end
        beg_text = "#{word.slice(i...word.length).join('')}#{l_text}ay"
      end
      word = beg_text
    }
    new_arr.join(" ")
  end
end

# new_thing = Piglatinize.new("He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish")
# new_thing = new_thing.latinize
# val2 = "eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay eamStray andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay"
# binding.pry
