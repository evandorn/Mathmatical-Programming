//
//  TableOfTriangularNumber.m
//
//  Program to calculate the trangular number for "n" numbers
//
//   Trangular number is defined as Tn = Σk = 1 + 2 + 3 + .... + n
//
//   Print output in a formatted table
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
    
    printf("Enter the integer value in which you want to calculate the triangular number for: \n");
    scanf("%i", &input);
    
    triangularNumber = 0;
    
    printf("TABLE OF TRIANGULAR NUMBERS: \n");
    printf(" n Sum from 1 to n \n");
    printf("---   -------\n");

    
    for(n = 1; n <= input; ++n) {
        triangularNumber += n;
        printf("%i          %i\n", n, triangularNumber);
    }
    
    [pool drain];
    return 0;
}