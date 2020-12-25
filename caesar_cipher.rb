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

    #3. convert each char to a number and store in new array
    phrase_array.map! { |c| c.ord + k}

    puts phrase_array
    #4. shift each number by key
    #5. convert each number back to char
end

caesar_cipher(phrase, key)