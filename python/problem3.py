#!/usr/bin/env python3

'''
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
'''

from helpers.eulerMath import factorize


def solve():
    n = 600851475143
    return max(factorize(n))


if __name__ == "__main__":
    print(solve())
