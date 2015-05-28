class GameBoard
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
    puts 'Here is the current board:'
    @board.each do |row|
      row.each {|item| print item}
      puts ''
    end
    puts "\nWhat's your move?"
  end

  def add_move

  end
end
