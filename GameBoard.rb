class GameBoard
  # Our 3 x 3 gameboard for use in game.rb

  def initialize
    @board = [
      [' _ ', ' _ ', ' _ '],
      [' _ ', ' _ ', ' _ '],
      [' _ ', ' _ ', ' _ ']
    ]

    @player1 = 'X'
    @player2 = 'O'
  end

  def print_board
    # Outputs the current board orientation.

    puts 'Here is the current board:'
    @board.each do |row|
      row.each {|item| print item}
      puts ''
    end
    #puts "\nWhat's your move?"
  end

  def add_move(row, col, player)
    # Accepts row, column, and player number. 
    # Changes board based on coordinates given, cannot overwrite used spaces

    current_pos = @board[row][col]
    if player == 1 && current_pos == ' _ '
      @board[row][col] = ' X '
    elsif player == 2 && current_pos == ' _ '
      @board[row][col] = ' O '
    end

    #@board
  end
end
