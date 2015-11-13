T = int(raw_input())
for i in range(1,2*T):
    N = int(raw_input())
    lst = map(int, raw_input().split())
    output = 0
    for e in lst:
        output = output | e
    print int (output* (2**(N-1))) %( 1000000000+7 )
