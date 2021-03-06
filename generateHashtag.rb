# # The marketing team are spending way too much time typing in hashtags.
# Let's help them with out own Hashtag Generator!

# Here's the deal:

# If the final result is longer than 140 chars it must return false.
# If the input is a empty string it must return false.
# It must start with a hashtag (#).
# All words must have their first letter capitalized.
# Example Input to Output:

# " Hello there thanks for trying my Kata" => "#HelloThereThanksForTryingMyKata"

# " Hello World " => "#HelloWorld"

# all tests passing
# post red/green/refactor cycle solution shown below

def generateHashtag(s)
  s = s.gsub(/\w+/, &:capitalize).chars

  
  if s.length > 140
    return false
    
  elsif s.length < 1
    return false
    
  else

    s.each_with_index do |char, i|
      if char == " "
        s.delete(char)
      end
    end
    
    s.unshift("#")
    return s.join
    
  end
end
