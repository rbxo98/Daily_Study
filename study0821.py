import sys
input=sys.stdin.readline
while True:
    x=int(input())*10000000
    N=int(input())
    if N==0:
        print("danger")
        continue
    table=[]
    for _ in range(N):
        table.append(int(input()))
    table.sort()
    sp,ep=0,N-1
    while True:
        if sp>=ep:
            print("danger")
            break
        result = table[sp]+table[ep]
        if result>x:
            ep-=1
            continue
        if result<x:
            sp+=1
            continue
        else:
            print(f"yes {table[sp]} {table[ep]}")
            break