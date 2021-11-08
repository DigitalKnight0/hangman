module Logic

    def creat_new_grid(key)
        grid = Array.new(key.length + 1,"_")
        if key.length <= 5
            for i in 0..1
              random = rand(0..key.length)
              grid[random] = key[random]
            end
        else 
            for i in 0..2
                random = rand(0..key.length)
                grid[random] = key[random]
              end
        end
        grid
    end

    def compare(grid , key , input)
        if key.include?(input)
            slots = key.count(input)
            marked = grid.count(input)
            if slots != marked
                return true
            end
        else
            return false
        end
    end

    def marker(grid , key , input)
        update = grid
        update.each_with_index do |a , ind|
            if a == "_" && input == key[ind]
                update[ind] = key[ind]
            end
        end
        update
    end

    def check_win?(grid)
       grid.none?("_")
    end

    def check_lose?(turns)
        turns == 0
    end
end


         



