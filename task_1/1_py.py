count_of_char = 1
new_string = ''
original_string = str(input())
actuale_char = original_string[0]
for i in range(1, len(original_string)):
    if original_string[i-1] == original_string[i]:
        count_of_char += 1
    else:
        new_string += original_string[i-1]
        new_string += str(count_of_char)
        count_of_char = 1
        actuale_char = original_string[i]
new_string += actuale_char
new_string += str(count_of_char)
if len(new_string) < len(original_string):
    print(new_string)
else:
    print(original_string)