// Move the first letter of each word to the end of it, then add "ay" to the end of the word. 
// Leave punctuation marks untouched.




function pigIt(s){
  const pig = [];
  
  const str = s.split(' ');
  
  for(var i = 0; i < str.length; i++) {
    let firstChar = str[i].charAt(0);
    let minusFirstLetter = str[i].slice(1);
    pig.push(minusFirstLetter += firstChar + 'ay');
  };
  
  return pig.join(" ");
}