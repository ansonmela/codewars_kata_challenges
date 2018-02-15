# Refactor the function into a recursive Fibonacci function 
# that using a memoized data structure avoids the deficiencies of tree recursion 
# Can you make it so the memoization cache is private to this function?

@cache = [0, 1]
def fibonacci(n)
  return @cache[n] if @cache[n]
  @cache[n] = fibonacci(n-1) + fibonacci(n-2)
end