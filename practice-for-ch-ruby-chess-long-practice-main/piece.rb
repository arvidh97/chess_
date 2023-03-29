class Piece
    attr_reader :color, :board, :pos
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos 
    end

    def to_s
        return symbol 
    end

    def empty?
        return true if board.pos.nil?
        false
    end

    def valid_moves

    end
end