// Write simple .camelCase method (camel_case function in PHP or CamelCase in C#) for strings. 
// All words must have their first letter capitalized without spaces.

String.prototype.camelCase=function(){
  // split the string into individual words
  var chars = this.split(" ");
  
  // loop thru array and delete all spaces
  for (var i = 0; i < chars.length; i++) {
    if (chars[i] === "") {
      chars.splice(i, 1);
    };
  };
    
  // if the input string consists of nothing, return
  if (chars[0] === "") {
    return "";
  };
  
  // capitalize first letter of each word in string
  chars = chars.map(function(chars){
    return chars.charAt(0).toUpperCase() + chars.slice(1);
  });
    
    return chars.join("");
}