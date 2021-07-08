require './resources.rb'

def getMaze
    maze = []
    File.readlines('maze.txt').each do |line|
    maze << line
    end
    return maze
end

def printMaze
    i = 0
    loop do
        break if i == $maze.length
        print $maze[i]
        i += 1
    end
end

def game
    loop do
        printMaze
        puts "Ou aller ?"
        path = gets.chomp
        if path == "d"
            right
        elsif path == "g"
            left
        elsif path == "h"
            up
        elsif path == "b"
            down
        end
    end
end

$maze = getMaze
print game