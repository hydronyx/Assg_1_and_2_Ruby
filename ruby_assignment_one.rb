puts "Question 5 : Find occurrence of RUBY from string 1."

string_one="RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
puts "The No.of occurances of RUBY in  string 1 are #{string_one.scan('RUBY').size}."
print "\n\n"
#
#
#
puts "Question 6 : Find the position where RUBY occurs  in the string 1."

string_one ="RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
array=string_one.split(" ")
position = array.size.times.select {|i| array[i] == 'RUBY'}
print "The wordwise  position/s of word RUBY in String 1 is/are : #{position}"
print "\n\n"
	#OR
string_one = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
positions = string_one.enum_for(:scan, /RUBY/).map { Regexp.last_match.begin(0) }
print "The characterwise position of word RUBY in String 1 is/are :#{positions}"
print "\n\n"
#
#
#
puts "Question 8: Capitalise string 1"
string_one= "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code.The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
puts string_one.upcase
print "\n\n"
#
# 
# 
puts "Question 9 : Combine string 1 & 2."

string_one ="RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."

string_two= "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."
puts string_one + string_two
print "\n\n"
#
#
#
puts "Question 10 : Print current date."

time = Time.new
puts time.strftime("%Y-%m-%d")
print "\n"
	#OR
date = "#{Time.new.day}-#{Time.new.month}-#{Time.new.year}"
print "\n\n"
#
#
#
puts  "Question 11 : print 12th Jan 2012"

day = Time.new.day
month=Time.new
disp_month = month.strftime("%b")

if day == 1
  date = "#{Time.new.day}st-#{disp_month}-#{Time.new.year}"
  print date
  
elsif day == 2
  date = "#{Time.new.day}nd-#{disp_month}-#{Time.new.year}"
  print date
  
elsif day == 3
  date = "#{Time.new.day}rd-#{disp_month}-#{Time.new.year}"
  print date
  
else
  date = "#{Time.new.day}th-#{disp_month}-#{Time.new.year}"
  print date
end
print "\n\n"
#
#
#
puts "Question No 12 : add  7 days in current date"

date=Time.now + (60 * 60 * 24 * 7)
puts date.strftime("%d-%m-%y")
print "\n\n"
#
#
#
puts "Question No 15 :Remove the HTML characters from string."

string_one="RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."

puts string_one.gsub('<br/>','')
print "\n\n"
#
#
#
puts "Question No 16 : Print the 'RUBY' word from string 1 by traversing it using string functions"

string_one ="RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."

string_one.split.each do |word|
  if word=='RUBY' 
  puts word 
  end
end
print "\n\n"
#
#
#
puts "Question 17 : Find the length of string 1 & 2."

string_one ="RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
length_one = string_one.length
print "length of string one is #{length_one}"
print "\n"

string_two = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."
length_two=string_two.length
print "length of string two is #{length_two}" 
print "\n"
print "\n\n"
#
#
#
puts "Question 18:  Compare two dates. (12-04-2010 & 12-05-2011). Calculate the days between these two dates."

require "date"
date_previous = Date.parse('2010-04-12')
date_now = Date.parse('2011-05-12')
puts how_many_days_have_passed = (date_now - date_previous).to_i
print "\n\n"
#	
#
#	
puts "Question 19: Print date after 20 days from current date"

Time.now + (60 * 60 * 24 * 20)
date= Time.now + (60 * 60 * 24 * 20)
puts date.strftime("%d %b %y ")
print "\n\n"
#
#
#
puts "Question  20 :  Print date in array format."

date = "#{Time.new.day}-#{Time.new.month}-#{Time.new.year}"
array = date.split("-")
print array
print "\n"
	#OR	
time = Time.new
values = time.to_a
print "\n\n"
#
#
#
puts "Question No 22 :write regex for phone no format : '+78'followed by 8 nos."
print " The regex for matching  phone no format is : /^\+78\d{8}$/ "
print "\n\n"
