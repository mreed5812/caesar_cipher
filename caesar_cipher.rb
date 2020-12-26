#takes 2 inputs -> string and numerical key

#Get string from user
print "Enter phrase: "
phrase = gets.chomp

#Get key from user
print "Enter key: "
key = gets.chomp



def caesar_cipher(string, key)
    #1. create variables to store string,key values
    s = string.upcase
    k = key.to_i
    
    #2. break string into array of char
    phrase_array = s.chars

    #check if lower or uppercase

    phrase_array.map! { |c| (((c.ord - 65) + k) % 26 + 65)}

    #5. convert each number back to char
    phrase_array.map! { |c| c.chr}
    new_phrase = phrase_array.join("")

    puts new_phrase
end

caesar_cipher(phrase, key)

