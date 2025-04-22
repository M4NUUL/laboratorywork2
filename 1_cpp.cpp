#include <iostream>
#include <string>

using namespace std;

int main(){
    cout << "Введите строку: ";
    string str;
    cin >> str;
    int count_of_char = 1;
    char actual_char = str[0];
    string new_str;
    for (int i = 1; i < str.length(); i++)
    {
        if (str[i - 1] == str[i])
        {
            count_of_char++;
        }
        else
        {
            new_str += actual_char;
            new_str += to_string(count_of_char);
            actual_char = str[i];
            count_of_char = 1;
        }
    }
    
    new_str += actual_char;
    new_str += to_string(count_of_char);

    if (new_str.length() < str.length())
    {
        cout << new_str << endl;
    }
    else
    {
        cout << str << endl;
    }
    return 0;
}