module Slideable 
    HORIZONTAL_DIRS = [
        [0, -1] #left
        [0, 1]  #right
        [1, 0]  #down
        [-1, 0] #up
    ]

    DIAGONAL_DIRS = [
        [-1, -1] #up-left
        [-1, 1]  #up-right
        [1, -1]  #down-left
        [1, 1]   #down-right   
    ]
    def horizontal_dirs 
        HORIZONTAL_DIRS
    end

    def diagonal_dirs  
        DIAGONAL_DIRS
    end

    def moves
        moves_arr = []
    end
end