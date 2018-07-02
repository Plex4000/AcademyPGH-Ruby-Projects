if !outofbounds((row - 1), (col - 1))
            if ship_grid[row - 1][col - 1] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end
        elsif !outofbounds((row - 1), (col))
            if ship_grid[row - 1][col] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end
        elsif !outofbounds((row - 1), (col + 1))
            if ship_grid[row - 1][col + 1] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end
        elsif !outofbounds((row), (col + 1))
            if ship_grid[row][col + 1] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end
        elsif !outofbounds((row + 1), (col + 1))
            if ship_grid[row + 1][col + 1] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end
        elsif !outofbounds((row + 1), (col))
            if ship_grid[row + 1][col] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end
        elsif !outofbounds((row + 1), (col - 1))
            if ship_grid[row + 1][col - 1] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end
        elsif !outofbounds((row), (col - 1))
            if ship_grid[row][col - 1] == "*"
            puts "You got close!"
            shots_grid[row][col] = "C"
            end
        else
            puts "You missed a ship!"
        end