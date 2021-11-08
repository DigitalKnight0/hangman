require "./wordgen.rb"
require "./display.rb"
require "./logic.rb"
require "./saveload.rb"


class Game
include Wordgen
include Display
include Logic
include SaveLoad

    attr_accessor :turns,:grid,:key
    def initialize
        @turns = 8 
        @grid = []
        @key = []  
    end

    def play
        if welcome == 1
        self.key = gen_word
        self.grid = creat_new_grid(key)
        else
            declutter_save
        end

       loop do
        input = ingame(grid , turns)
        
        if compare(grid , key , input) 
           
            self.grid = marker(grid , key , input)
            if check_win?(grid)
                puts "Congrats, you won!"
                puts grid.join(",")
                break
            end
        else
            self.turns -= 1
            puts "Incorrect choice"
            if check_lose?(turns)
                puts "\nYou have lost"
                puts "The correct answer was #{key.join("")}"
                break
            end
        end

        if save_ask == 1
           save(grid , key, turns)
        end
      end
    end

    def declutter_save
       data = load_game
       self.grid = data[0].compact
       self.key = data[1].compact
       self.turns = data[2]
    end
end     

