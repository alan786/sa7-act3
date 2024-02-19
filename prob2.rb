ROOM_POINTS = [5, 10, 15]
total_points = 0

puts "Welcome to the Adventure Game!"
puts "You have #{total_points} points."

def start_room_selection(total_points)
  puts "Choose a room (1-3) to enter or 'exit' to end the game: "
  input = gets.chomp.downcase

  if input == 'exit'
    puts "Game over! You collected a total of #{total_points} points."
  else
    room_number = input.to_i
    if (1..3).include?(room_number)
      total_points += ROOM_POINTS[room_number - 1]
      puts "You entered Room #{room_number} and earned #{ROOM_POINTS[room_number - 1]} points."
      start_room_selection(total_points)
    else
      puts "Invalid input. Please enter a number between 1 and 3 or 'exit'."
      start_room_selection(total_points)
    end
  end
end

start_room_selection(total_points)

  