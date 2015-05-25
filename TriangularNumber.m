//
//  TriangularNumber.m
//
//  Program to calculate the trangular number for "n" number
//
//   Trangular number is defined as Tn = Σk = 1 + 2 + 3 + .... + n
//
//  Created by Evan Dorn on 5/25/15.
//
//

#pragma mark - TODO: error handling and try catch for invalid inputs

#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    int input;
    int n;
    int triangularNumber;
    
    printf("Enter the integer value in which you want to calculate the trangular number for: ");
    scanf("%i", &input);
    
    for(n = 1; n <= input; n++) {
        triangularNumber += n;
    }
    
    if(input == 1) {
        printf("The 1st Triangular Number is %i \n", triangularNumber);
    } else if (input == 2) {
        printf("The 2nd Triangular Number is %i \n", triangularNumber);
    } else if (input == 3) {
        printf("The 3rd Triangular Number is %i \n", triangularNumber);
    } else {
        printf("The %ith Triangular Number is %i \n", input, triangularNumber);
    }
    
    [pool drain];
    return 0;
}