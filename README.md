# Stack Overflow in Hack Recursive Functions

This repository demonstrates an uncommon stack overflow error that can occur in Hack recursive functions. The error is subtle and doesn't manifest immediately with all input values.

## Problem

The `foo`, `bar`, and `baz` functions are recursive and work correctly for some inputs, but when large inputs are passed to `baz` the recursive calls lead to a stack overflow.  This happens even when the overall work done isn't excessively large compared to other test cases.

## Solution

The solution involves implementing iterative versions of the recursive functions. Iterative solutions avoid the limitations imposed by the call stack depth.  This provides robustness against stack overflow issues, particularly when handling potentially large input values.
