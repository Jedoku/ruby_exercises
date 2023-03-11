def caesar_cipher(string, shift)
  alphabet = Array('a'..'z')
  non_caps = Hash[alphabet.zip(alphabet.rotate(shift))]
  alphabet = Array('A'..'Z')
  caps = Hash[alphabet.zip(alphabet.rotate(shift))]
  encrypter = non_caps.merge(caps)
  string.gsub(/[a-zA-Z]/) { |c| encrypter[c] }
end

puts caesar_cipher("What a string!", 5)
