#include "assistant.h"

Assistant::Assistant()
{

}

bool Assistant::isFileExists(const string &name)
{
    ifstream f(name.c_str());
    return f.good();
}
