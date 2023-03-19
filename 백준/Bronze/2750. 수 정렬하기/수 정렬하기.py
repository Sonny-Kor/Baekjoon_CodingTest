a = list()
num = int(input())
for i in range(num):
    a.append(int(input()))
for k in range(len(a)):
    for j in range(k+1):
        temp = 0
        if a[k] < a[j]:
            temp = a[k]
            a[k] = a[j]
            a[j] = temp 
for q in range(num):
    print(a[q])