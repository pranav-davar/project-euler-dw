%dw 2.0
output application/json
fun sumOfN(num)=
num*(num+1)/2
fun sumOfSqN(num)=
num*(num+1)*(2*num+1)/6
var n=100
---
pow(sumOfN(n),2) - sumOfSqN(n)