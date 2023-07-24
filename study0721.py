# https://www.acmicpc.net/problem/14719
# import sys
# input = sys.stdin.readline

# H,W=map(int,input().split())
# table=[[0 for _ in range(W)] for _ in range(H)]
# wall=list(map(int,input().split()))
# for j in range(W):
#     for i in range(wall[j]):
#         table[i][j]=-1

# total=0
# for i in range(H):
#     sp=False
#     ep=False
#     cnt=0
#     for j in range(W):
#         if table[i][j]==-1:
#             if not sp:
#                 sp=True
#                 continue
#             if sp:
#                 total+=cnt
#                 cnt=0
#                 continue
#         else:
#             if sp:
#                 cnt+=1
# print(total)

# https://www.acmicpc.net/problem/1707
import sys
input = sys.stdin.readline
def dfs(node,color):
    global footprint
    global colors
    for next in table[node]:
        colors[next].append(color)
        if not footprint[next]:
            footprint[next]=True
            dfs(next,not color)


for _ in range(int(input())):
    n,m=map(int,input().split())
    table=[[]for _ in range(n+1)]
    footprint=[False for _ in range(n+1)]
    colors=[[]for _ in range(n+1)]
    for _ in range(m):
        s,e = map(int,input().split())
        table[s].append(e)
        table[e].append(s)
    for x in range(1,n+1):
        if not footprint[x]:
            footprint[x]=True
            colors[x].append(True)
            dfs(x,False)
    isPossible=True
    for result in colors[1:]:
        isPossible &= (sum(result)==len(result)) or (sum(result)==0)
    print("possible" if isPossible else "impossible")

    