#include <iostream>

using namespace std;

int main(){
   cout << "Введите количество чисел: ";
   int range;
   cin >> range;
   int count_of_repits = 0;
   for (int element, last_element = -1, i = 0; i < range; i++)
   {
      cin >> element;
      if (element == last_element)
      {
            count_of_repits++;
      }
      last_element = element;
   }
   cout << "Количество повторов: " << count_of_repits << endl; 
   return 0;
}
