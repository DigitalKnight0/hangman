require 'yaml'
module SaveLoad
  def save(grid, key, turns)
    system('clear')
    puts 'Please enter your name to Save the game!'
    name = gets.chomp.downcase
    data = [grid, key, turns]
    saveFile = File.open("../savegames/save#{name}.yml", 'w')
    saveFile.write(data.to_yaml)
    saveFile.close
  end

  def load_game
    puts 'Following savegames are found'
    Dir.foreach('../savegames/') do |file|
      next if ['..', '.'].include?(file)

      puts file.slice(4..-5)
    end
    puts 'Please enter the name of the savegame to load'
    begin
      name = gets.chomp.to_s.downcase
      data = YAML.load(File.read("../savegames/save#{name}.yml"))
    rescue StandardError
      puts 'You have entered an invalid name, retry please'
      retry
    end
    data
  end
end
