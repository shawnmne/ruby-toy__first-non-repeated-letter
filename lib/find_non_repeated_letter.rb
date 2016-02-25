# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
  flag = 0          #flag used to test for same character
  i = 0             #counter
  a = str.length    #length of string for loop
 while i < a  do    

    if str[i] == str[i + 1] #compares character and next character
      flag = 1              #if match set flag
    elsif flag == 0         #check to see if flag has been set 
      return str[i]         #if flag not set return character
    else
      if i == str.length - 1    #check to see if reached end of string
          return nil            #return nil
      end
     flag = 0               #no match at this point set flag to 0
    end
    i += 1                  #advance counter
  end
end
