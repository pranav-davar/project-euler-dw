%dw 2.5
output application/json
fun fact(n)=
(2 to n) reduce $*$$
---
fact(100) reduce $+$$