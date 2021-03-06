// In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". 
// You have function with one side of the DNA (string, except for Haskell); 
// you need to get the other complementary side. 
// DNA strand is never empty or there is no DNA at all (again, except for Haskell).

function DNAStrand(dna){

  return dna.replace(/A|T|C|G/g, function(c) {
    return (c == "A") ? "T" : (c == "T") ? "A" : (c == "G") ? "C" : "G"
  });
  
  return dna;
}