
import sys
input = sys.stdin.readline
# keyboard=[[1,2,3],[4,5,6],[7,8,9],['x',0,'x']]
# lefthand=[1,0]
# righthand=[1,2]
# weight=0

# def getweight(hand,target):
#     idist = abs(target[0]-hand[0])
#     jdist = abs(target[1]-hand[1])
#     cross_count = min(idist,jdist)
#     side_count=abs(idist-jdist)
#     return max( (3*cross_count)+(2*side_count) ,1)

# for w in input():
#     if w == '0':
#         target=[3,1]
#     elif w in "123456789":
#         target=[(int(w)-1)//3,(int(w)-1)%3]
#     leftweight=getweight(lefthand,target)
#     rightweight=getweight(righthand,target)
#     weight+=min(leftweight,rightweight)
#     if leftweight<rightweight:
#         lefthand=target
#     else:
#         righthand=target
    
# print(weight)

# def solution(numbers):
#     lefthand=[1,0]
#     righthand=[1,2]
#     weight=0

#     for w in numbers:
#         if w == '0':
#             target=[3,1]
#         elif w in "123456789":
#             target=[(int(w)-1)//3,(int(w)-1)%3]
#         leftweight=getweight(lefthand,target)
#         rightweight=getweight(righthand,target)
#         weight+=min(leftweight,rightweight)
#         if leftweight<rightweight:
#             lefthand=target
#         else:
#             righthand=target
        
#     print(weight)



# N,M=map(int,input().split())
# table=[]
# direction = [[-1,0],[0,1],[1,0],[0,-1]]
# di=[1,-1,0,0]
# dj=[0,0,1,-1]
# robots=list(map(int,input().split()))
# for _ in range(N):
#     table.append(list(map(lambda x:bool(int(x)),input().split())))
# cnt=0
# while True:
#     if table[robots[0]][robots[1]]:
#         cnt+=1
#         table[robots[0]][robots[1]]=False
#         continue
#     for x in range(4):
#         nexti=robots[0]+di[x]
#         nextj=robots[1]+dj[x]
#         if 0<=nexti<N and 0<=nextj<M and not table[nexti][nextj]:
#             robots[2]= robots[2]-1 if robots[2]>0 else 3

        
N=int(input())
dp=[0 for _ in range(N+1)]
for k in range(1,N+1):
    cnt=0
    newN=N-k
    cnt+=k
    if newN%3!=0:
        cnt+=newN%3
        newN-=newN%3
    result=cnt*(2**(newN//3))
    print(result)
        

