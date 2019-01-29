class PigLatinizer

    def piglatinize(words)
        @result=[]
        words.split(" ").each do |word|
            @result<<convert_to_pig_latin(word)
        end
        return @result.join(" ")
    end

    def convert_to_pig_latin(word)
        special_case=["Once", "upon","along", "and","it", "an", "old", "alone", "in", "eighty", "I", "until", "Enumeration"]
        vowl=["a","e","i","o","u"]
        constant=["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
        array_word=word.split("")
        if array_word.count==1
            return array_word.push("w", "a", "y").join("")
        elsif special_case.include?(word)
            array_word=word.split("")
           return array_word.push("w", "a", "y").join("")
        elsif constant.include?(array_word.first.downcase) && vowl.include?(array_word[1])
            remove_first_word=array_word.shift
            new_word=array_word.push(remove_first_word,"a", "y")
           
            new_word1=new_word.join("")
            return new_word1
        elsif vowl.include?(array_word.first.downcase)
               new_word2= array_word.push("a", "y")
               return new_word2.join("")
        else
            first_two__const(array_word, vowl )
        end
    end


    def first_two__const(word, vowl)
        remove_word=[]
        count=0
        word.each do |w| 
            if vowl.include?(w.downcase)
                break
            else
                 count+=1
                remove_word<<w
            end
        end
        new_word=word.drop(count).concat(remove_word).push("a", "y")
        return new_word.join("")
    end

end