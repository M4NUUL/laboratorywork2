repets = int(input("Введите количество чисел"))
last_element = -1
repit = 0
for _ in range(repets):
   element = int(input())
   if element == last_element:
      repit += 1
   last_element = element
print(f'Количество повторов: {repit}')