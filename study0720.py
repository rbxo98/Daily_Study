# https://www.acmicpc.net/problem/1240
import sys
input = sys.stdin.readline
from collections import deque
N,M=map(int,input().split())
table=[[]for _ in range(N+1)]
for _ in range(N-1):
    x,y,d=map(int,input().split())
    table[x].append([y,d])
    table[y].append([x,d])
for _ in range(M):
    sp,ep=map(int,input().split())
    footprint=[False for _ in range(N+1)]
    que=deque([[sp,0]])
    footprint[sp]=True
    cnt=0
    find=False
    while not find:
        node,d=que.popleft()
        for next,r in table[node]:
            if next == ep:
                cnt=d+r
                find=True
                break
            if not footprint[next]:
                footprint[next]=True
                que.append([next,d+r])
    print(cnt)