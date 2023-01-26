
# Takes in a string and shift factor
# Outputs the modified string
# wrap from z to a
# Keep the same case





def caesar_cipher(phrase, shift):
    
    # split phrase into array of characters
    phrase_arr = [ord(x) for x in phrase]
    print(phrase_arr)
    cipher_arr = []
    
    
    for c in phrase_arr:
        base = 0
        if c < 91: 
            base = 65
        else:
            base = 97
        if base in range(65, 90) or base in range(97, 122): 
            cipher_arr.append((((c - base) + shift) % 26) + base)


    print(cipher_arr)



caesar_cipher("Zebra", 5)