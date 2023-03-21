N = int(input())

for i in range(N):
    R, S = input().split()
    for i in S:
        print(i*int(R),end="")
    print()
