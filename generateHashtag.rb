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