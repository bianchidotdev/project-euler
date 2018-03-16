from math import sqrt, floor


def isMult(divisor, n):
    return n % divisor == 0


def isMultAny(divisor_list, n):
    for divisor in divisor_list:
        if isMult(divisor, n):
            return True
    return False


def isMultAll(divisor_list, n):
    for divisor in divisor_list:
        if not isMult(divisor, n):
            return False
    return True


def isEven(n):
    return n % 2 == 0


def isOdd(n):
    return not isEven(n)


def isPrime(n):
    if n < 2:
        return False
    if n == 2:
        return True
    if n % 2 == 0:
        return False
    root = floor(sqrt(n))

    for i in range(3, root + 1, 2):
        if isMult(i, n):
            return False
    return True


def factorize(n):
    if n < 2:
        raise ValueError()
    factor_list = []
    while True:
        if isPrime(n):
            factor_list.append(n)
            return factor_list
        if n % 2 == 0:
            n /= 2
            factor_list.append(2)
        else:
            for i in range(3, floor(sqrt(n)) + 1, 2):
                if n % i == 0:
                    n /= i
                    factor_list.append(i)


if __name__ == "__main__":
    num_list = [2, 3, 4, 16, 100, 17, 123, 132, 600851475143]
    for n in num_list:
        print(str(n) + ": " + str(factorize(n)))
    print(isPrime(25))
