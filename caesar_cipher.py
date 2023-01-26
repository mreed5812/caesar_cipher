
# Takes in a string and shift factor
# Outputs the modified string
# wrap from z to a
# Keep the same case





def caesar_cipher(phrase, shift):
    
    # split phrase into array of characters
    phrase_arr = [ord(x) for x in phrase]
    cipher_arr = []
    
    for c in phrase_arr:
        base = 0

        if c in range (65,91): 
            base = 65
        elif c in range(97,123):
            base = 97

        if c in range(65, 91) or base in range(97, 123): 
            cipher_arr.append((((c - base) + shift) % 26) + base)
        else: 
            cipher_arr.append(c)

    result = ''.join([chr(x) for x in cipher_arr])    
    print(result)


caesar_cipher("This is Z test", 5)