class String
  define_method(:leet) do
    letters = []
    letters_two = []
    letters = self.split('')
    letters.each() do |letter|
      if letter == 'e'
        letters_two.push(3)
      else
        letters_two.push(letter)
      end
    end
    letters_two.join()
  end
end
