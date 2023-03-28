require_relative 'piece'

class Board
    def initialize
        @rows = Array.new(8) {Array.new(8)}
        @rows[0].map! {|ele| ele = Piece.new}
        @rows[1].map! {|ele| ele = Piece.new}
        @rows[6].map! {|ele| ele = Piece.new}
        @rows[7].map! {|ele| ele = Piece.new}
    end

    def rows
        @rows
    end

    def [](pos)
        row,col = pos 
        @rows[row][col]
    end

    def []=(pos, value)
        row,col = pos 
        @rows[row][col] = value
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos] == nil
            raise "no piece here"
        # elsif @rows[start_pos] == 
        # #     raise "not yo piece"
        elsif self[end_pos] != nil
            raise "this spot is taken"
        else
            curr_piece = self[start_pos]
            self[end_pos] = curr_piece
            self[start_pos] = nil
        end
    end
end

game = Board.new

p game[[1,0]]
p game[[3,4]]
# p game.move_piece([2,0], [3,0])
p game.move_piece([0,0], [3,0])
print game.rows[0]
