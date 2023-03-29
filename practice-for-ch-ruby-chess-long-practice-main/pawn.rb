require_relative 'piece'

class Pawn < Piece
    def symbol
    '♟'#.colorize(color)
    end

    def moves 

    end

    private
    def at_start_row?
        return true if (self.color == :black && board[pos[0]].include?(self)) || (self.color == :white && board[pos[0]].include?(self))
        false
    end

    def forward_dir
        if self.color == :black
            return 1
        else
            return -1
        end
    end

    def forawrd_steps

    end
end