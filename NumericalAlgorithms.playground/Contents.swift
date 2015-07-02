//: Playground - noun: a place where people can play

//  Numerical Algorithms are used when the solution to a problem would take
//  too long to calculate. In other words, numerical algorithms are methods
//  to solve mathematical problems that don’t rely on a closed-form analytic solution.

//  What is a closed-form Analytic Solution: It’s any mathematical formula that you use to solve an exact value by plugging in the
//  values you already know and performing a finite set of operations. More simply put, if you can use algebra to find an
//  expression to solve an unknown value, and all you need to do is substitute the known values and evaluate that expression,
//  then you have a closed-form analytic solution.

import Cocoa

func bisection(x: Double) -> Double {
    
    // 1.) Set lower bound to 1
    var lower_bound = 1.0
    
    // 2.) Set upper bound to passed value (x)
    var upper_bound = x
    
    // 3.) Finds the middle value between the two and defines the rate of accuracy
    var m = (lower_bound + upper_bound) / 2
    var epsilon = 1e-10
    
    // 4.) Checks if the operation has reached the desired accuracy
    while(fabs(m * m - x) > epsilon) {                                // fabs() computes the absolute value of floating point number
        
        // If not, then computes until desire accuracy has been reached
        m = (lower_bound + upper_bound) / 2
        if(m * m > x) {
            upper_bound = m
        } else {
            lower_bound = m
        }
    }
    return m
}

// Test 1: for bisection
let bis = bisection(2.5)

