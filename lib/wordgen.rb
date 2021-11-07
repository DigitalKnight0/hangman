module Wordgen

    def get_list
        sample = File.open("../5desk.txt" , "r")
        words = sample.readlines
        sample.close 
        words  
    end

    def gen_word
      myWord = ""
      loop do
        list = get_list
        random_id = rand(0..list.size)
        myWord = list[random_id]
        if myWord.length > 3
            
            break
        end
      end
      key = myWord.split("")
      key
    end
end


