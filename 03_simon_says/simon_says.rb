#write your code here
def echo(input)
  return input
end

def shout(input)
  return input.upcase
end

def repeat(input, *amount)
  output = input
  i = 1
  if amount[0]
    while i < amount[0]
      output += " " + input
      i += 1
    end
  else
    output += " " + input
  end
  return output
end

def start_of_word(word, nth_letter)
  start_of_word = word[0]
  for i in 1..nth_letter-1
    start_of_word += word[i]
  end
  return start_of_word
end

def first_word(input)
  array = input.split(' ')
  return array[0]
end

def capitalize(input)
  return input.capitalize
end

def titleize(input)
  array = input.split(" ")
  output = array[0].capitalize
  little_words = "the and over under a an"
  i = 1
  while array[i]
    if little_words.include?(array[i])
    else
      array[i] = array[i].capitalize
    end
    output += " " + array[i]
    i += 1
  end
  return output
end
