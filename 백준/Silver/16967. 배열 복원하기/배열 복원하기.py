H, W , X , Y = map(int,input().split(" "))

B_Array = []
for i in range(H+X):
    B_Array.append(list(map(int,input().split(" "))))
A_Array = [B_Array[i][:W] for i in range(X)] + [[0]*W for _ in range(H-X-1)] + [B_Array[-1][Y:W+Y]] 

for i in range(H):
    if i < X:
        print(*A_Array[i])
        continue
    if i == H-1:
        print(*A_Array[-1])
        continue

    for j in range(W):
        if j < Y:
            A_Array[i][j] = B_Array[i][j]
            print(B_Array[i][j], end=' ')
            continue

        A_Array[i][j] = B_Array[i][j] - A_Array[i-X][j-Y]
        print(A_Array[i][j], end=' ')
    print()