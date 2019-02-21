#include <string>
#include <map>

#pragma mark - Macro

#define getMax(x, y) x>y? x:y

#pragma mark - Global variable

extern std::string globalString;

#pragma mark - function

class ExampleCppLibrary {

public: std::string randomString(int size);

};

#pragma mark - struct

struct CNationality {
    int identifier;
    std::string country;
};

#pragma mark - enum
// is actually a C enum
enum 曜日: int {
    月曜日,
    火曜日,
    水曜日,
    木曜日,
    金曜日,
    土曜日,
    日曜日,
};

// is a c function, safely copied std::string
void printCNationalityCountry(struct CNationality const nationality);
// c
enum 曜日 現在の曜日();

#pragma mark - Functional pointer
// c
int functionalPointer(int startValue, int(*getNextValue)(int val));
