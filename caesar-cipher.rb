require 'pry-byebug'

def caeser_cipher(string, shift_factor)
  # declare array of upper and lowecase ascii numbers
  uppercase_ascii_range = (65..90).to_a
  lowercase_ascii_range = (97..122).to_a

  # declare array to store integer and ciphered text
  integer_array = []
  cipher_array = []

  # split string into character array
  character_array = string.split(//)

  # loop through charater array convert to integers, append to integer array
  character_array.each do |character|
    if character.match(/[A-Z]+/) && 
       uppercase_ascii_range.include?(character.ord + shift_factor)
      integer_array.push << character.ord + shift_factor
    elsif character.match(/[a-z]+/) && 
        lowercase_ascii_range.include?(character.ord + shift_factor)
      integer_array.push << character.ord + shift_factor
    elsif character.match(/[a-zA-Z]+/)
      integer_array.push << character.ord + shift_factor + 
                            shift_factor_wrap(shift_factor) 
    else 
      integer_array.push << character.ord 
    end
  end
  
  # loop through integer array convert to character
  integer_array.each do |integer| 
    cipher_array.push << integer.chr
  end
  # return the cipher array as text
  return cipher_array.join
end

# helper function to wrap from z to a 
def shift_factor_wrap(shift_factor) 
  if shift_factor < 0 
    return 26 
  else
    return -26
  end
end

# Test cipher: "Attack at once!" with a left shift of 3
p caeser_cipher("Attack at once!",-3)

# Test decipher: "Attack at once!" with a right shift of 3
p caeser_cipher("Xqqxzh xq lkzb!",3)