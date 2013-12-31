# ASSIGNMENT NO 2 - RUBY BASICS QUESTION 1-4
puts "\n\n"

puts " QUESTION No 1 : Compute the sum of cubes for a given range a through b."       +
     " Write a method called sum_of_cubes to accomplish this task."                   +   
     " Example Given range 1 to 3 the method should return 36."                 

def sum_of_cubes(a,b)
  sum=0;
  (a..b).each{|x| sum+=(x**3)}
    return sum 
end

  puts sum_of_cubes(1,3)

# OR

def sum_of_cubes(a,b)
  (a..b).inject(0) { |sum, n| sum=sum + (n**3) }
end
  puts sum_of_cubes(1,3)
  print("\n\n")



puts "QUESTION No 2 : Given an Array, return the elements that are present exactly"   +
     " once in the array. You need to write a method called non_duplicated_values "   +
     " to accomplish this task.Example: Given [1,2,2,3,3,4,5],"                       +
     " the method should return [1,4,5]."      

array = [1,2,2,3,3,4,5]

def non_duplicated_values(array)
  array.find_all { |value| array.count(value) == 1 }
end
  
  print non_duplicated_values(array)
  print("\n\n")



puts "QUESTION No 3 : Given a sentence, return true if the sentence is a palindrome." +
     " You are supposed to write a method palindrome? to accomplish this task. "      +
     " Note Ignore whitespace and cases of characters."                               +
     " Example: Given \"Never odd or even\" the method should return true."      

sentence_one="Never odd or even"

def palindrome?(sentence)
  lowercase_sentence = sentence.downcase 
  space_removed_sentence = lowercase_sentence.gsub(" ", "")

    if space_removed_sentence == space_removed_sentence.reverse
      print "true"
    else
      print "false"
    end

end

  print palindrome?(sentence_one)
  print("\n\n")



puts "QUESTION No 4 : 9 is a Kaprekar number since 9 ^ 2 = 81 and 8 + 1 = 9,297 is "  +
     " also Kaprekar number since 297 ^ 2 = 88209 and 88 + 209 = 297.In short, "      +
     " for a Kaprekar number k with n-digits, if you square it and add the right n"   +
     " digits to the left n or n-1 digits, the resultant sum is k. "                  +
     " Find if a given number is a Kaprekar number."

def kaprekar(input)
 
  num=input
  num_str=num.to_s
  num_length= num_str.length
  
  square = num**2
  square_str = square.to_s
  square_length= square_str.length

  index=0
  first_number=0
  second_number=0
  
  while index < num_length  do
      
    last_digit = square %10
    first_number = first_number + last_digit * (10**index)
    square = square/10 

      index = index+1   
  end

  second_number = square
  temp= first_number + second_number

  if temp == num
    print "The number #{num} is Kaprekar Number"
  else
    print "The number #{num} is not a Kaprekar Number"
  end

end  
  
puts kaprekar(9) 
puts kaprekar(297)
puts kaprekar(10) 
puts "\n\n\n"



puts "QUESTION 5 : Differentiation between proc, block and lambda : DIFFERENCE 1"

puts "Difference between Proc and Lambda : - 1)In Handling of parameters "            +  
     "Proc take only required number of parameters from the parameters passed."       +
     "It is shown as below \n"
      
  puts "Three parameters passed to Proc ,accepted"
    p = Proc.new { |x, y, z| print  x , y , z } 
    p.call 14, 9, 2   
    puts "\n"

  puts "Four parameters passed to Proc ,accepted"
    p = Proc.new { |x, y, z| print  x , y , z } 
    p.call 14, 9, 2,88
    puts "\n\n"

puts "Difference between Proc and Lambda : - 1)But in Handling of parameters "        +
     " in Lambda if no of parameters exceed the number of required "                  + 
     "parameters,it throws error."                                                    +
     "It is shown as below "
      
  puts "Three parameters passed to Lambda ,accepted."
    l = lambda { |x, y, z| print x,y,z } 
    l.call 14, 9, 2
    puts "\n"

  puts "Four parameters passed to Lambda ,throws an error."
    l = lambda { |x, y, z| print x,y,z } 
#   l.call 14, 9, 2,88
    puts "l.call 14, 9, 2,88 commented because this call will lead to error."
    puts "\n\n\n"

 


puts "QUESTION 5 : Differentiation between proc, block and lambda : DIFFERENCE 2"

puts " Difference between Proc and Lambda :2) When return statement is encountered,"   +
     " Proc Returns back from the method without executing the next line after"        +
     " the block.That is it executes next line after the method it was called from.\n"

def proc_method
    p = Proc.new { return "\n Proc Executed " }
    p.call
    print " Statement AFTER Proc executed.\n"    
end

  puts proc_method 
  print " The Statement AFTER the proc_method executed.\n"
  puts "\n\n"


  
puts " Difference between Proc and Lambda :2) When return statement is encountered,"     +
     " Lambda executes the next line after the call and also after the method "          +
     " it was called from. "

def lambda_method
  l = lambda { return " \n Lambda Executed.\n" }
    puts l.call
    print " Statement AFTER Lambda Executed\n"  
end

  lambda_method
  print " The Statement AFTER the lambda_method executed.\n"
  puts "\n\n"

puts " DIFFERENCE : Block vs Proc and Lambda - \n 1) Procs are objects,"                  +
     " Blocks are not objects.\n 2) Blocks cannot be assigned to a variable."             +
     " \n 3) At most one block can appear in an argument list\n"

puts "Difference 1: This is shown in Eg. Below."  
  p = Proc.new { puts "Hi Suyog" }
  p.call                      # prints 'Hi Suyog'
  p.class                     # returns 'Proc'
  a = p                       # a now equals p, a Proc instance
  p                           # returns a proc object #<Proc:0x00000002017be0@(irb):11> 

puts "Difference 2 :  Blocks cannot be assigned to a variable. "

   a = { puts "Hello World"}   # syntax error as block cannot be assigned to a variable

puts "\nDifference 3: A block is just part of the syntax of a method call.It doesn’t mean"+
     " anything on a standalone basis.A block can only appear in argument lists."         +
     " This is shown as below E.g. :.\n"
 
  { puts "Hello World" }      # syntax error as it is not used as part of method call 
  [1,2,3].each {|x| puts x*2} # only works as part of the syntax of a method call


 

