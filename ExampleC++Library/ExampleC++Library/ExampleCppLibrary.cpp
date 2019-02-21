//
//  ExampleC__Library.m
//  ExampleC++Library
//
//  Created by ceciliah on 2/19/31 H.
//  Copyright © 31 Heisei Humlan. All rights reserved.
//

#include "ExampleCppLibrary.h"
#include <iostream>
#include <time.h>

using namespace std;

#pragma mark - Global variable

string globalString = "I am C++";

#pragma mark - function

string ExampleCppLibrary::randomString(int size) {
    string result;
    string collection = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

    for (int i = 0; i < size; i++) {
        int random = arc4random() % collection.size();
        result = result + collection[random];
    }

    cout<<"result is"<<result<<endl;
    return result;
}

#pragma mark - struct

void printCNationalityCountry(struct CNationality const nationality) {
    cout<<"C function nationality is " << nationality.country<<endl;
}

#pragma mark - Global enum

enum 曜日 現在の曜日() {
    time_t rawtime;
    struct tm * currentTime = localtime(&rawtime);
    int day = currentTime->tm_wday;
    cout<<"current day is "<<day<<endl;
    return (曜日) day;
}

#pragma mark - Functional pointer

int functionalPointer(int startValue, int(*getNextValue)(int val)) {
    return getNextValue(startValue);
}
