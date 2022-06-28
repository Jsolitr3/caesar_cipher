def caesar_cipher(inputString, number = 1)
    stringArray = inputString.split("")
    encryptedArray = stringArray.map do |letter|
        if (65..90).include?(letter.ord) #capital letter
            (((letter.ord - 65+number)%26)+65).chr
        elsif (97..122).include?(letter.ord) #lowercase letters
            (((letter.ord - 97+number)%26)+97).chr
        else
            letter
        end
    end
    puts encryptedArray.join
end