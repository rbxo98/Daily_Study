import sys
input=sys.stdin.readline
    
direct = [[1,0],[0,1],[-1,0],[0,-1]]
dir_dict={'N':0,'E':1,'S':2,'W':3}
A,B=map(int,input().split())
N,M=map(int,input().split())
table=[[0 for _ in range(A+1)]for _ in range(B+1)]
robots=[[0,0,0]]
for r in range(1,N+1):
    x,y,d=input().split()
    robots.append([int(x),int(y),dir_dict[d]])
    table[int(y)][int(x)]=r

for _ in range(M):
    num,cmd,cnt=input().split()
    num=int(num)
    cnt=int(cnt)
    x,y,vect = robots[num]
    if cmd=='F':
        table[y][x]=0
        for _ in range(cnt):
            y+=direct[vect][0]
            x+=direct[vect][1]
            if 0 == x or x == A+1 or y == 0 or y == B+1:
                print("Robot {0} crashes into the wall".format(num))
                exit(0)
            elif table[y][x]!=0:
                print("Robot {0} crashes into robot {1}".format(num,table[y][x]))
                exit(0)
        table[y][x]=num
        robots[num]=[x,y,vect]
        continue
    else:
        if cmd=='L':
            cnt*=-1
        vect+=cnt
        vect%=4
        robots[num]=[x,y,vect]
print("OK")