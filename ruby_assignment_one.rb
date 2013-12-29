
# Question 8:

string_one= "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code.The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
=> "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
> string_one.upcase
=> "RUBY PARSES A FILE BY LOOKING FOR <BR/> ONE OF THE SPECIAL TAGS THAT TELLS IT TO START INTERPRETING THE TEXT AS RUBY CODE. THE PARSER THEN EXECUTES ALL OF THE CODE IT FINDS UNTIL IT RUNS INTO A RUBY CLOSING <BR/> TAG."
>  

# Question 9 :

> srting_one ="RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
=> "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
> string_two= "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used.
"
=> "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used.
"
> print string_one + string_two
=> "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag.RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used.
"
>  


# Question 10 :

> time = Time.new
=> 2013-12-29 08:41:04 UTC
> puts time.strftime("%Y-%m-%d")
=> "2013-12-29"
>  


# Question No 12 :

date=Time.now + (60 * 60 * 24 * 7)
=> 2014-01-05 11:41:02 UTC
> puts date
=> "2014-01-05 11:41:13 +0000"
> puts date.strftime("%d-%m-%y")
=> "05-01-14"

# Question 17 :

puts string_one
=> "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. "
> string_one.length
=> 123

> string_two = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."
=> "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."
> string_two.length
=> 162