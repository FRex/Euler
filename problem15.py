mem = [None for i in range(10 ** 4)]
def countWays(x, y):
    if x == 0 or y == 0:
        return 1

    i = x * 30 + y
    if mem[i] is None:
        mem[i] = countWays(x - 1, y) + countWays(x, y - 1)

    return mem[i]

if __name__ == '__main__':
    print(countWays(20, 20))
