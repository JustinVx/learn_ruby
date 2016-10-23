class Book
  attr_reader :title

  def title=(title)
    words = title.split(" ")
    words.map! do |word|
      word.downcase!
      do_not_capitalize = ["for", "and", "nor", "but", "or", "yet", "so", "on", "in", "a", "an", "from", "by", "the", "of"]
      caps = true
      do_not_capitalize.each { |no_cap_word| caps = false if word == no_cap_word }
      caps ? (word.capitalize) : (word)
    end
    words[0].capitalize!
    @title = words.join(" ")
  end

end
