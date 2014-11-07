
 
psts = {'a1' => ' ', 'a2' => ' ', 'a3' => ' ', 'b1' => ' ', 'b2' => ' ', 'b3' => ' ', 'c1' => ' ', 'c2' => ' ', 'c3' => ' '}
 
loop do # while winning condition is not met
#insert def get cell status here
  system("clear")
 
  puts "     |     |     "
  puts "  #{psts['a1']}  |  #{psts['a2']}  |  #{psts['a3']}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{psts['b1']}  |  #{psts['b2']}  |  #{psts['b3']}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{psts['c1']}  |  #{psts['c2']}  |  #{psts['c3']}  "
  puts "     |     |     "
 
  puts "Choose a position (from 1 to 9) to place a piece:"
 
  position = gets.chomp
  
  case 
  when position == '1'
    psts['a1'] = 'X'
  when position == '2'
    psts['a2'] = 'X'
  when position == '3'
    psts['a3'] = 'X'  
  when position == '4'
    psts['b1'] = 'X'
  when position == '5'
    psts['b2'] = 'X'
  when position == '6'
    psts['b3'] = 'X'    
  when position == '7'
    psts['c1'] = 'X'
  when position == '8'
    psts['c2'] = 'X'
  when position == '9'
    psts['c3'] = 'X'
  end


  case 'X'
  when psts['a1'] && psts['a2'] && psts['a3'] == 'X'
    puts "Player won!"
    break
  when psts['b1'] && psts['b2'] && psts['b3'] =='X' 
    puts "Player won!"
    break
  when psts['c1'] && psts['c2'] && psts['c3'] == 'X'
    puts "Player won!"
    break
  when psts['a1'] && psts['b1'] && psts['c1'] == 'X'
    puts "Player won!"
    break
  when psts['a2'] && psts['b2'] && psts['c2'] == 'X'
    puts "Player won!"
    break
  when psts['a3'] && psts['b3'] && psts['c3'] == 'X'
    puts "Player won!"
    break
  when psts['a1'] && psts['b2'] && psts['c3'] == 'X'
    puts "Player won!"
    break
  when psts['c1'] && psts['b2'] && psts['a3'] == 'X'
    puts "Player won!"
    break
  else
    puts "continue"
 
 
  end
 
end