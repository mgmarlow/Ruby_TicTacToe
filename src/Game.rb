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
    @coords = gets.chomp.strip

    exit if @coords.downcase == 'exit'
    add_piece = draw
    toggle_player unless add_piece == :invalid_input
  end

  def draw
    @row = @coords[0].to_i - 1
    @col = @coords[-1].to_i - 1
    if @row <= 2 and @row >= 0 and @col <= 2 and @col >= 0
      @board.add_move(@row, @col, @player)
    else
      return :invalid_input
    end
  end

  def toggle_player
    @player == 1 ? @player = 2 : @player = 1
  end

  def start
    game_loop
  end
end
