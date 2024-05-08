%dw 2.0
output application/json
var N=1000
var lastN=pow(10,10)
---
(1 to 1000) reduce(it,acc=0)-> (acc + pow(it,it) mod lastN)