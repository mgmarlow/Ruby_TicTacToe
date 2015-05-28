require_relative 'GameBoard'

class Game
  # Create an instance of our gameboard, and do logic for some gameboard 
  # within a game loop.
  #

  def initialize
    @coords = ''
    @board = GameBoard.new
    @row = @col = 0
    @player = 1
  end
 
  def game_loop
    while true
      @board.print_board
      poll_events
    end
  end

  def poll_events
    puts "\nPlayer #{@player}, what's your move?"
    puts 'Please enter the coordinates (row col) into the prompt, or "exit" to quit'
    puts 'Example input:  1 3'
    print '> '
    @coords = gets.chomp

    exit if @coords.downcase == 'exit'
    draw
    toggle_player
  end

  def draw
    @row = @coords[0].to_i - 1
    @col = @coords[-1].to_i - 1
    @board.add_move(@row, @col, @player)
  end

  def toggle_player
    @player == 1 ? @player = 2 : @player = 1
  end

  def start
    game_loop
  end
end

game = Game.new
game.start
