

def translate(word)
  vowels = "aeiouy"
  word = word.downcase
  words = word.split(" ")
  w = 0
  while words[w]
      while !vowels.include?(words[w][0])
        words[w] += words[w][0]
        words[w] += words[w][1] if words[w][0] == "q"
        words[w][0] = ""
        words[w][0] = "" if words[w][words[w].length-2] == "q" && words[w][words[w].length-1] == "u"
      end
    words[w] += "ay"
    w += 1
  end
  word = words[0]
  i = 1
  while words[i]
    word += " " + words[i]
    i += 1
  end
  return word
end
