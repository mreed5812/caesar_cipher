#Get string from user
print "Enter phrase: "
phrase = gets.chomp

#Get key from user
print "Enter key: "
key = gets.chomp

def caesar_cipher(string, key)
    #create variables to store string,key values
    s = string
    k = key.to_i
    
    #break string into array of char
    phrase_array = s.chars

    phrase_array.map! do |c|
        if c.ord.between?(65,90)
            (((c.ord - 65) + k) % 26 + 65)
        elsif c.ord.between?(97,122)
            (((c.ord - 97) + k) % 26 + 97)
        else
            c.org + k
        end
    end

    #convert each number back to char
    phrase_array.map! { |c| c.chr}
    new_phrase = phrase_array.join("")

    puts new_phrase
end

caesar_cipher(phrase, key)

