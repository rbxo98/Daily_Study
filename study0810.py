# import sys
# input = sys.stdin.readline

# start = list(input().rstrip())
# end = list(input().rstrip())
# def switch(S):
#     return list(map(lambda x:'A'if x=='B' else 'B', S))

# for _ in range(len(end)):
#     w = end.pop(len(end)-1)
#     if w=='B':
#         end=switch(end)
#     elif w!='A':
#         break
#     if end==start:
#         print(1)
#         exit(0)
# print(0)

import sys
input = sys.stdin.readline
print("abcd"[::-1])

start = input()
end = input()

for _ in range(len(end)):
    w = end[-1]
    end=end[:-1]
    if w=='B':
        end=end[::-1]
    if end==start:
        print(1)
        exit(0)
print(0)

s=input()
e=list(input())
print(1 if "".join([e.pop(len(e)-1 if e[-1]=='A' else 0) for _ in range(len(e)-len(s))])==s else 0)

'''
1001 9
0110 -6

110010 2 16 32 50
001101 13
'''