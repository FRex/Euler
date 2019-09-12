#include <algorithm>
#include <string>
#include <iostream>

int main()
{
    std::string s = "0123456789";
    for(int i = 1; i < (1000 * 1000); ++i)
        std::next_permutation(s.begin(), s.end());

    std::cout << s << std::endl;
}

