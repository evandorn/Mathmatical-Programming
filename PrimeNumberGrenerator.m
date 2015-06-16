//
//  PrimeNumberGrenerator.m
//  
//   Generate prime numbers using the Sieve of Eratosthenes algorithm
//
//
//  Created by Evan Dorn on 5/26/15.
//
//

#import <Foundation/Foundation.h>

#pragma mark - Sieve of Eratosthenes

+ (NSArray *)primeNumberGenerator:(NSInteger)maxNumber {
    
    NSMutableArray *returnArray = [@[] mutableCopy];
    
    for(NSUInteger i = 0; i < maxNumber; i++) {
        resultArray[i] = @((NSUInteger)i);
    }
    
    resultArray[1] = @0;
    
    for(NSUInteger j = 2; j < maxNumber; j++) {
        if(![resultArray[j] isEqual: @0]) {
            for(NSUInteger k = j * 2; k < maxNumber; k += j) {
                resultArray[k] = @0;
            }
        }
    }
    
    [resultArray removeObjectIdenticalTo:@0];
    
    return [resultArray copy];
}
