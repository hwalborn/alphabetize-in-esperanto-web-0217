require 'pry'

def alphabetize(arr)
  difference_index = find_first_difference(arr)
  arr.sort_by! {|phrase|
    esper_index(phrase, difference_index)
  }
end

def esper_index(phrase, difference)
  esperanto_alphabet= "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split("")
  esperanto_alphabet.each_with_index {|letter, index|
    if phrase[difference] == letter
      return index
    end
  }
end

def find_first_difference(arr)
  index = 0
  while arr[0][index] == arr[1][index]
    index += 1
  end
  index
end
