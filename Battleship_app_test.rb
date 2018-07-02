#define the outofbounds function

def outofbounds (row, col)
    
    out_of_bounds = false

    if row < 0 || col < 0 || row > 7 || col > 7
        out_of_bounds = true

    end

    return out_of_bounds

end

#create grid and populate with 0s

ship_grid = Array.new(8){Array.new(8){"0"}}

#add ships as *

(1..5).each do |i|

row = Random.new
row_index = row.rand(0..7)

col = Random.new
col_index = col.rand(0..7)

    if ship_grid[row_index][col_index] != "*"
        ship_grid[row_index][col_index] = "*"
    else
        redo
    end
end

(0..7).each do |i|
    (0..7).each do |j|
        print ship_grid[i][j]
    end
    puts
end

hitships = 0;
shots_grid = Array.new(8){Array.new(8){"."}}

while hitships < 5
    puts "Please enter a coordinate to shoot at in an 8 X 8 grid with indexes. example row,col: 0,1"
    coords = gets.chomp.split(",")
    row = coords[0].to_i
    col = coords[1].to_i

    if outofbounds row, col
        puts "Please enter a coordinate that is within the ship grid bounds."
    elsif ship_grid[row][col] == "*"
        puts "You hit a ship!"
        shots_grid[row][col] = "X"
        hitships += 1
    else
        
        if !outofbounds(row, col - 1)
            if ship_grid[row][col - 1] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end

        elsif !outofbounds(row + 1, col - 1)
            if ship_grid[row + 1][col - 1] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end

        elsif !outofbounds(row + 1, col)
            if ship_grid[row + 1][col] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end

        elsif !outofbounds(row + 1, col + 1)
            if ship_grid[row + 1][col + 1] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end

        elsif !outofbounds(row, col + 1)
            if ship_grid[row][col + 1] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end

        elsif !outofbounds(row - 1, col + 1)
            if ship_grid[row - 1][col + 1] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end

        elsif !outofbounds(row - 1, col)
            if ship_grid[row - 1][col] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end

        elsif !outofbounds(row - 1, col - 1)
            if ship_grid[row - 1][col- 1] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end

        else
            shots_grid[row][col] = "M"
            puts "You did not hit a ship, please try again."
        end
    end
    (0..7).each do |i|
        (0..7).each do |j|
            print shots_grid[i][j] + " "
        end
        puts
    end
end
