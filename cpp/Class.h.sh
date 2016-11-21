#!/bin/sh

echo "#ifndef $1_H
#include <string>
using namespace std;

class Class
{
        private:
        public:
                Class();
};
#endif" > $1

