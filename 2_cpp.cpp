#include <iostream>
#include <string>
#include <unordered_set>

using namespace std;

bool Pangrammas_test(const string &str)
{
    unordered_set<char> array_of_char; //массив 'уникальных' букв
    for (int i = 0; i < str.length(); i++)
    {
        if (isalpha(str[i]))
        {
            auto test = array_of_char.find(str[i]);
            if (test == array_of_char.end())
            {
                array_of_char.insert(str[i]);
            }
        }
    }
    if (array_of_char.size() == 26)
    {
        return true;
    }
    return false;
}

int main(){
   string str;
   cout << "Введите строку Панграмму: ";
   cin >> str;
   cout << boolalpha << Pangrammas_test(str) << endl;
   return 0;
}