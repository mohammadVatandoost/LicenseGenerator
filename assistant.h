#ifndef ASSISTANT_H
#define ASSISTANT_H
#include <iostream>
#include <fstream>

using namespace std;

class Assistant
{
public:
    Assistant();
    static bool isFileExists(const std::string& name);
};

#endif // ASSISTANT_H
