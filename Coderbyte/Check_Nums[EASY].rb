#Check Nums - compare two numbers and determine which one is greater
def checkNums(num1,num2)

  # code goes here
  if(num2 > num1)
    return true
  elsif(num2 == num1)
    return -1
  else
    return false
  end
         
end

p checkNums(5,2)