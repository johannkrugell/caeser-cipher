require 'pry-byebug'

def caeser_cipher(string, shift_factor)
  # convert string to an array of characters
  character_array = string.split(//)

  p character_array
  integer_array = []

  # loop through charater array convert to integers
  character_array.each do |character|
    if character.ord >= 65 && character.ord <= 90 ||
      character.ord >= 97 && character.ord <= 122
        integer_array.push << character.ord+shift_factor
    else
        integer_array.push << character
    end
  end

  cipher_array = []
  
  # loop through integer array convert to character
  integer_array.each do |integer| 
    cipher_array.push << integer.chr
  end
  return cipher_array.join
end

p caeser_cipher("Cat, on!",2)