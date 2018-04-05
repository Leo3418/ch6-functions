# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string1, string2) {
  nchar(string1) >= 2 * nchar(string2) || nchar(string2) >= 2 * nchar(string1)
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("hello", "world")
is_twice_as_long("A", "BC")
is_twice_as_long("AB", "C")
is_twice_as_long("INFO", "201")
is_twice_as_long("GNU", "Linux")
is_twice_as_long("R", "programming language")
is_twice_as_long("Version control", "Git")

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string1, string2) {
  length_diff <- nchar(string1) - nchar(string2)
  if (length_diff > 0) {
    paste("Your first string is longer by", length_diff, "characters")
  } else if (length_diff < 0) {
    paste("Your second string is longer by", -length_diff, "characters")
  } else {
    "Your strings are the same length!"
  }
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("hello", "world")
describe_difference("A", "BC")
describe_difference("AB", "C")
describe_difference("INFO", "201")
describe_difference("GNU", "Linux")
describe_difference("R", "programming language")
describe_difference("Version control", "Git")
