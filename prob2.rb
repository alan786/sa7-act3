class Game
    attr_accessor :score
  
    def initialize
      @score = 0
    end
  
    def play
      puts "Welcome to the Adventure Game!"
      puts "You have #{@score} points."
  
      loop do
        puts "Choose a room (1-3) to enter or 'exit' to end the game:"
        input = gets.chomp.downcase
  
        case input
        when '1', '2', '3'
          room_number = input.to_i
          enter_room(room_number)
        when 'exit'
          break
        else
          puts "Invalid input. Please enter a number from 1 to 3 or 'exit'."
        end
      end
  
      puts "Game over! You collected a total of #{@score} points."
    end
  
    private
  
    def enter_room(room_number)
      points = calculate_points(room_number)
      @score += points
      puts "You entered Room #{room_number} and earned #{points} points."
    end
  
    def calculate_points(room_number)
      case room_number
      when 1
        5
      when 2
        10
      when 3
        15
      end
    end
  end
  
  # Start the game
  game = Game.new
  game.play
  