#require ''

def caeser_cipher(string, shift_factor)
  # convert string to an array of characters
  character_array = string.split(//)

  integer_array = []

  # loop through charater array convert to integers
  character_array.each do |character|
    integer_array.push << character.ord
  end

end

p caeser_cipher("cat",0)