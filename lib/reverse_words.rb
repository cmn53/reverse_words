# A method to reverse each word in a sentence, in place.

def reverse_words(my_words)
  return my_words if my_words.nil? || my_words.length == 1

  i = 0

  while i < my_words.length
    until my_words[i] != ' '
      i += 1
      return my_words if i == my_words.length
    end

    start = i

    until my_words[i] == ' ' || i == my_words.length - 1
      i += 1
    end

    if i == my_words.length - 1
      fin = i
    else
      fin = i - 1
    end

    while start < fin
      temp = my_words[start]
      my_words[start] = my_words[fin]
      my_words[fin] = temp
      start += 1
      fin -= 1
    end

    i += 1
  end
  return my_words
end
