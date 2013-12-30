# ASSIGNMENT NO 2 - RUBY BASICS QUESTION 1-4


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
  first=0
  second=0

    while index < num_length  do
      
      last = square %10
      first = first + last * (10**index)
      square = square/10         
        index = index+1   
    end

   second = square
   temp= first + second

   if temp == num
    print "The number #{num} is Kaprekar Number"
   else
    print "The number #{num} is not a Kaprekar Number"
  end
end  
  
  puts kaprekar(9) 
  puts kaprekar(10) 




