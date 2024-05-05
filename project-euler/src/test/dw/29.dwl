%dw 2.5
output application/json
var m=100
var n=100
---
sizeOf(((2 to n) reduce(a,acc=[])->acc ++ ((2 to n) reduce ((b, accu=[]) ->accu + pow(a,b) )) ) distinctBy $)