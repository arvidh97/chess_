require_relative 'piece'

class NullPiece < Piece
    def initialize
        include Singleton 
        @color = :none
        @symbol = ' '
    end

    def moves 
        []
    end

    def symbol 
        @symbol
    end
end