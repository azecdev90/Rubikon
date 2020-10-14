require_relative 'class/rubikonclass'

puts <<-RUBIKON

  ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
  |||                                                                                    |||
  |||  ||||||||   |||   |||   ||||||||    |||   |||    |||   ||||||||||    |||      |||  |||
  |||  |||   ||   |||   |||   |||    |||  |||   |||   |||    |||    |||    ||||||   |||  |||
  |||  ||||||     |||   |||   |||||||     |||   ||||||       |||    |||    |||  ||| |||  |||
  |||  |||  |||   |||   |||   |||    |||  |||   |||   |||    |||    |||    |||    |||||  |||
  |||  |||   |||  |||||||||   |||||||     |||   |||    |||   ||||||||||    |||     ||||  |||
  |||                                                                                    |||
  ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

  RUBIKON


  puts "Choose option and press enter"
  puts "1. For crypting plain text"
  puts "2. For decrypting chiper"

  option = gets.chomp
  op = option.to_i


  if op == 1

      puts "Enter your text for crypting:"
      plain_text = gets.chomp
      puts "Enter key(number):"
      key = gets.chomp
      key = key.to_i

      var = Rubikon.new
      x = var.encrypt(plain_text,key)

  else

    puts "Enter your text for decrypting:"
    cipher = gets.chomp
    puts "Enter key(number):"
    key = gets.chomp
    key = key.to_i

    var = Rubikon.new
    x = var.decrypt(cipher,key)

end
