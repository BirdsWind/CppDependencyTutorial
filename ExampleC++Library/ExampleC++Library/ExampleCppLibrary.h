#include <string>
#include <map>

#pragma mark - Macro

#define getMax(x, y) (x>y ? x:y)

#pragma mark - Global variable

extern const int versionNumber;

#pragma mark - Function

class ExampleCppLibrary {

public: std::string randomString(int size);

private: int version;

public: ExampleCppLibrary(int version);

};

#pragma mark - Struct

struct CNationality {
    int identifier;
    std::string country;
};

//Global function in C++ is a c function, safely copied std::string
void printCNationalityCountry(struct CNationality const nationality);

#pragma mark - Enum
// is actually a C enum
enum 曜日 {
    月曜日, 火曜日, 水曜日, 木曜日, 金曜日, 土曜日, 日曜日,
};

// c
enum 曜日 現在の曜日();

#pragma mark - Functional pointer
// c
int functionalPointer(int startValue, int(*getNextValue)(int val));
