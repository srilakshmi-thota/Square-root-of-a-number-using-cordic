# Square-root-of-a-number-using-hyperbolic-cordic-with-pipelining
Square root of a number using Hyperbolic CORDIC in Vectoring Mode using 16 stages of pipelining
cordic_main.v file is the main file that calls all the necessary modules
pipe_1 is called only for  i=4, 13,40, 121, ...,j,3j+1
pipe_2 for the remainning cases
format of the inputs and outputs is 22bits of which 1bit is for sign 4 bits for integer part and the remaining 16bits for the fractional part.
