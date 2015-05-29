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
    else
      return :invalid_input
    end

    @board
  end

  def game_win char
    # Column
    @board.each do |row|
      if row[0] == char and row[1] == char and row[2] == char
        return true
      end
    end

    # Row
    3.times do |col|
      if @board[0][col] == char and @board[1][col] == char and @board[2][col] == char
        return true
      end
    end

    # Diagonal
    return true if @board[0][0] == char and @board[1][1] == char and @board[2][2] == char
    return true if @board[0][2] == char and @board[1][1] == char and @board[2][0] == char

    # Default
    false
  end
end
