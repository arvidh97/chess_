module Slideable 
    HORIZONTAL_DIRS = [
        [0, -1] #left
        [0, 1]  #right
        [1, 0]  #down
        [-1, 0] #up
].freeze

    DIAGONAL_DIRS = [
        [-1, -1] #up-left
        [-1, 1]  #up-right
        [1, -1]  #down-left
        [1, 1]   #down-right   
].freeze
    def horizontal_dirs 
        HORIZONTAL_DIRS
    end

    def diagonal_dirs  
        DIAGONAL_DIRS
    end

    def moves
        move_dirs.each do |dx, dy|
      moves.concat(grow_unblocked_moves_in_dir(dx, dy))
    end

    private
    def move_dirs
        raise NoImplementatedError
    end

    def grow_unblocked_moves_in_dir(dx,dy)
        moves_arr = []
        curr_x, curr_y = pos
        until new_pos.any? {|ele| ele < 0 || ele > 7} #off the board || position is the same colo piece 
            new_pos = [(curr_x + dx), (curr_y + dy)]
            if board[new_pos] != nil && board[new_pos].color != self.color
                moves_arr << new_pos
                break
            elsif board[new_pos] != nil && board[new_pos].color == self.color
                break
            else
                moves_arr << new_pos
            end
            curr_x, curr_y = new_pos
        end 
        moves_arr
    end
end