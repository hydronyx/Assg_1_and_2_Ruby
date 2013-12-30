# ASSIGNMENT NO 2 - RUBY BASICS QUESTION 1-4

puts "QUESTION No 2 : Given an Array, return the elements that are present"   \
   + "exactly once in the array. You need to write a method called"           \ 
   + "non_duplicated_values to accomplish this task. "                        \
   + "Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]."

array = [1,2,2,3,3,4,5]

def non_duplicated_values(array)
  array.find_all { |value| array.count(value) == 1 }
end
  
print non_duplicated_values(array)



puts "QUESTION No 3 : Given a sentence, return true if the sentence is a "    \
   + "palindrome. You are supposed to write a method palindrome? to "         \
   + "accomplish this task. Note Ignore whitespace and cases of characters."  \
   + "Example: Given "Never odd or even" the method should return true."  

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


