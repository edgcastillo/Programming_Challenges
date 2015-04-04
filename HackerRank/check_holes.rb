# 0 => 1 hole
# 1 => 0 hole
# 2 => 0 hole
# 3 => 0 hole
# 4 => 1 hole
# 5 => 0 hole
# 6 => 1 hole
# 7 => 0 hole
# 8 => 2 holes
# 9 => 1 hole

def  solvePuzzle( num) 
    numArray = [1,0,0,0,1,0,1,0,2,1]
    counter = 0
    num = num.to_s.split('')
    puts num
    num.each{|digit|
        puts "#{digit}" + "num loop"
        numArray.each_with_index{|number,index|
            if(digit.to_i == index)
                counter += number
                puts "#{counter}" + "numArray loop"
            end
            }
        }
    return counter
end



puts solvePuzzle(1288) #=> 4 holes