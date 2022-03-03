# odin-bubble-sort

As I've went through sorting algorithms many times in college, I chose to have a little fun and make bubble sort recursively in ruby as well as make a test function to test really large arrays of random number and....the rabbit hole ensued.

I sat there, happily making my tail recursive algorithm, it worked- YAY!!-or so I thought. After testing it with an array of size 300, I got an error saying my stack reached its limit. While researching this I found you can increase max stack size of a ruby environment, but I felt this was strange that the call stack was becoming so large. I used tail recursion...shouldn't the stack be optimized in the compiler because there are no pending operations? After throughly reading my code, I found nothing wrong, it was only a few lines and clearly tail recursion. That's when I searched "tail recursion ruby." TAIL RECURSION IS NOT AUTOMATICALLY OPTIMIZED IN RUBY.

Well, that's what was wrong, defeated I thought I had to rewrite my code and a recursive solution was not a solution, yet with more research, I found there is a setting to use it. Using it was a little over my head for my current Ruby experience because you need to alter flags ruby's complier uses, but that's nothing a little internet can't fix.

The simpliest solutions were to set the flags in another file, and then load my functions into that file. And I expected this one to take me twenty minutes top xD
