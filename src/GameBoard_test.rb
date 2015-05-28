require 'minitest/autorun'
require_relative 'GameBoard'
require_relative 'Game'

board = GameBoard.new
board.print_board

board.add_move(1,2,1)
board.print_board

board.add_move(1,2,2)
board.print_board
