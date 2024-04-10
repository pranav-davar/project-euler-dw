%dw 2.0
output application/json
import log10 from dw::util::Math
// Fn denotes Limit of Number
var Fn=4000000
// Maximum number of elements in the Fibonacci Series
var n= ceil((log10(Fn) as Number) / (log10((sqrt(5)+1)/2)) as Number)
---
((1 to n-1) reduce (v,acc={a:0,b:2,c:2}) -> if(acc.a+4*acc.b <= Fn) {a:acc.b, b:acc.a+4*acc.b, c:acc.c+acc.a+4*acc.b} else acc).c