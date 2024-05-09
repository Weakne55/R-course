#1 max
max_three <- function(a, b, c) {
  if (a >= b && a >= c) {
    return(a)
  } else if (b >= a && b >= c) {
    return(b)
  } else {
    return(c)
  }
}
max(1,2,3)

#2 vect sum
sum_vector <- function(vec) {
  sum_result <- 0
  for (num in vec) {
    sum_result <- sum_result + num
  }
  return(sum_result)
}
vec <- c(8, 2, 5, 0)
print(sum_vector(vec))

#3 multiply
multiply_vector <- function(vec) {
  mult_result <- 1
  for (num in vec) {
    mult_result <- mult_result * num
  }
  return(mult_result)
}

multiply_vector(c(1,2,3))

#4 reverse

reverse_string <- function(str) {
  reversed_str <- paste(rev(strsplit(str, "")[[1]]), collapse = "")
  return(reversed_str)
}

reverse_string('abcd')
#5 factorial

factorial <- function(n) {
  if (n == 0) {
    return(1)
  } else {
    return(n * factorial(n - 1))
  }
}

factorial(5)

#6  range

check_range <- function(num, min_val, max_val) {
  if (num >= min_val && num <= max_val) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

check_range(5,4,6)

#7 up and down работает только для английского, для русского надо ASCII, но мне лень 

count_letters <- function(str) {
  upper_count <- sum(utf8ToInt(str) >= 65 & utf8ToInt(str) <= 90)
  lower_count <- sum(utf8ToInt(str) >= 97 & utf8ToInt(str) <= 122)
  print(paste("Количество букв в верхнем регистре:", upper_count))
  print(paste("Количество строчных букв:", lower_count))
}

count_letters('SmThInG WrOnG')

#8 unique

unique_elements <- function(vec) {
  unique_vec <- unique(vec)
  return(unique_vec)
}

unique_elements(c(2,2,2,2,3,3,3,4,4,5,5))

#9 even

print_even_numbers <- function(vec) {
  even_vec <- vec[vec %% 2 == 0]
  print(even_vec)
}


print_even_numbers(c(1,2,3,4,5,6,7,8,9,10))

#10 palindrom - NOT WORKING

is_palindrome <- function(str) {
  clean_str <- tolower(gsub("[[:punct:] ]", "", str))
  return(clean_str == rev(strsplit(clean_str, "")[[1]]))
}

is_palindrome('abcddcba')

#11 pangram

check_pangram <- function(str) {
  alphabet <- letters
  str <- tolower(str)
  str <- gsub("[^a-z]", "", str)
  str <- unique(strsplit(str, "")[[1]])
  if (length(intersect(str, alphabet)) == 26) {
    return(TRUE)  # строка является панграммой
  } else {
    return(FALSE)  # строка не является панграммой
  }
}

str <- "The quick brown fox jumps over the lazy dog"
print(check_pangram(str))

#12 

sort_hyphenated_words <- function(words) {
  words <- strsplit(words, "-")[[1]]
  sorted_words <- paste(sort(words), collapse = "-")
  return(sorted_words)
}

words <- "green-red-yellow-black"
print(sort_hyphenated_words(words))

#13 

create_square_list <- function() {
  num_list <- 1:30
  square_list <- lapply(num_list, function(x) x^2)
  return(square_list)
}

result_list <- create_square_list()
print(result_list)

