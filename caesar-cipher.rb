require 'pry-byebug'

def caeser_cipher(string, shift_factor)
  # convert string to an array of characters
  character_array = string.split(//)

  integer_array = []

  # loop through charater array convert to integers
  character_array.each do |character|
    integer_array.push << character.ord+shift_factor
  end

  cipher_array = []
  
  # loop through integer array convert to character
  integer_array.each do |integer| 
    cipher_array.push << integer.chr
  end
  return cipher_array.join
end

p caeser_cipher("Cat",1)