# Rubikon class

class Rubikon

# encrypt method
# arg plain_text Text in plain format for encrypting
# arg key Key for shiffting letters in alphabet
  def encrypt(plain_text,key)

    # initalize variables
    new = Array.new
    arr = plain_text.chars
    alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

    # Looping through array and calculate new position
      arr.each { |e|
          position = alphabet.index(e)
          number = position + key
    # If element position is below total of letters add new element position
          if number<25
            new.push(number)
          else
    # If element new position is greater then total alphabet then calculate position from start
          total = number - 25 - 1
            new.push(total)
          end
    }

    # Create new array with elements positions
    cipher = Array.new

    # Loop through new array and get new elements
        new.each { |e|
            new = alphabet[e]
           cipher.push(new)
    }

    # Convert array to string and print it to console
    string = cipher.join
    puts string
  end

# decrypt method
# arg cihper Hidden text
# arg key Key for shiffting letters in alphabet
  def decrypt(cipher, key)

    # initalize variables
    alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    arr = cipher.chars
    new = Array.new

    # Looping through array and calculate number
      arr.each { |e|
          position = alphabet.index(e)
          number = position - key
    # If number is greater or equal 0 then add element in array
          if number>=0
            new.push(number)
          else
    # If not then calculate position from the end and add in array
            positive = - number
            minus = 25 - positive + 1
            new.push(minus)
        end
      }

    # Create new array for plain_text
        plain_text = Array.new

    # Looping through array and get elements
        new.each { |e|
          new = alphabet[e]
          plain_text.push(new)
      }

    # Convert array to string and print it to console
        string = plain_text.join
        puts string
      end

end
