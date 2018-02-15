#Your task is to implement a function that would take the morse code as input 
# and return a decoded human-readable string. MORSE_CODE dictionary may be used.

def decodeMorse(morseCode)
	# if expected output is less than 2 letters long, then strip of whitespaces, split into individual letters...
	# and map each morse code key to its respective letter. Join the output and return.
  if morseCode.strip.split("   ").length < 2
    return morseCode.strip.split("   ").map { |w| w.split(" ").map {|c| MORSE_CODE[c] } }.join   
  else
  	# if expected output is more than 2 letters long, then do the same procedure as above, however, join again...
  	# with space separator. covers edge case of S O S. 
     return morseCode.strip.split("   ").map {|w| w.split(" ").map { |c| MORSE_CODE[c] }.join }.join(" ")
  end
end

# algorithm completed independently in a bit more complex manner initially...
# then upon running and receiving all tests passing...
# code was refactored by comparing other senior developer's solutions...
# into the above script... 
# all tests are green. 