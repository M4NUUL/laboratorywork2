string = input("Введите строку: ")
array_of_char = set()
for i in range(len(string)):
   if string[i].isalpha and string[i] not in array_of_char:
      array_of_char.add(string[i])
if len(array_of_char) == 26:
   print("True")
else:
   print("False")