# Complete the solution so that it returns the largest five...
#  digit number found within the number given. 
#  The number will be passed in as a string of only digits. 
#  It should return a five digit integer. 
#  The number passed may be as large as 1000 digits.

def solution(digits)
 digits.split('').each_cons(5).max.join.to_i
end

