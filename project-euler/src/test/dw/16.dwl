%dw 2.5
output application/json
fun powDigitSum(n)=
pow(2,n) reduce $+$$
---
powDigitSum(1000)