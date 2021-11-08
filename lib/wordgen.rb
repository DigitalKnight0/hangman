module Wordgen
  def get_list
    sample = File.open('../5desk.txt', 'r')
    words = sample.readlines
    sample.close
    words
  end

  def gen_word
    myWord = ''
    list = get_list
    loop do
      random_id = rand(0..list.size)
      myWord = list[random_id]
      break if myWord.length > 3
    end
    fix = myWord.chomp.chomp
    key = fix.split('')
    key.each { |x| x.downcase! }
  end
end
