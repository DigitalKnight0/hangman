module Display
  def welcome
    puts 'Welcome to the Hangman Game by ~Hecker'
    puts "A note from Hecker - Please do not save \n relentlessly as the files keeps clustering on"

    puts 'Press 1 to start a new game'
    puts 'Press 2 to Load a previous save'

    input = 0
    loop do
      input = gets.chomp.to_i
      if input.between?(1, 2)
        break
      else
        puts 'You have entered an invalid number, please try again!'
      end
    end
    input
  end

  def ingame(grid, choices)
    input = ''
    puts "\nThe current grid is below"
    print grid.join(',')
    puts "\nYou have #{choices} choices left"
    puts 'Enter a Letter to test'
    loop do
      input = gets.chomp.to_s
      if input.downcase.between?('a', 'z')
        break
      else
        puts 'Invalid choice, please try again'
      end
    end
    input.downcase
  end

  def save_ask
    puts 'Press 1 to save'
    puts 'Press any other key to continue'
    gets.chomp.to_i
  end
end
