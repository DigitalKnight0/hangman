module Display

    def welcome
        puts "Welcome to the Hangman Game by ~Hecker"
        puts "A note from Hecker - Please do not save \n relentlessly as the files keeps clustering on"

        puts "Press 1 to start a new game"
        puts "Press 2 to Load a previous save"

        input = 0
        loop do 
        input = gets.chomp.to_i
        if input.between?(1..2)
            break
        else
            puts "You have entered an invalid number, please try again!"
        end
        end
    input
    end

    def ingame(arr , choices)
      input = ""  
      puts "The current grid is below"
      print arr.join(",")
      puts "You have #{choices} left"
      puts "Enter a Letter to test"
      loop do
      input = gets.chomp.to_s 
      if input.downcase.between?("a","z")
        break
      else
        puts "Invalid choice, please try again"
      end
      end
    input
    end

    def wrong
        puts "You have entered a wrong choice"
    end

    def correct
        puts "you have entered a right choice!"
    end
end

    



        