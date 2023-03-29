module Stepable 
    def moves 
        moves = []
        curr_x, curr_y = pos
        move_diffs.each do |dx, dy|
            new_pos = [(curr_x + dx), (curr_y + dy)]
            if new_pos.any? {|ele| ele < 0 || ele > 7}
                next 
            else
                if board[new_pos].color == self.color
                    next 
                elsif board[new_pos].color != self.color
                    moves << new_pos
                else
                    moves << new_pos
                end
            end
        end
        moves
    end

    private 
    def move_diffs
        raise NotImlementedError
    end
end