# So, I learned tail recursion is weird in Ruby, and you actually have to enable it. Not only that but there is a max call stack variable!
# Also it has to be enabled at compile time, so the cleanest way to do it is call the function from another file.
# Ergo why the tests are here.

RubyVM::InstructionSequence.compile_option = { # Thank you internet, I now know how to turn on tail recursion in Ruby.
  tailcall_optimization: true,
  trace_instruction: false
}

require './bubble_sort'

def bubble_sort_test(n, range = 0..10_000)
  # creates a random array of size n and sorts it using bubble sort and returns the sorted array.
  array = []                           # range of the random numbers is an optional parameter.
  n.times { array.push(rand(range)) }
  bubble_sort(array)
end

pp bubble_sort_test(300)
