%dw 2.5
output application/json
import * from prime
var natN=20
var primeN= (2 to natN) reduce(it,acc=[])-> if(isPrime(it)) acc + it else acc
fun maxPowN(num,p,maxN)=
if(pow(num,p+1)>maxN)
pow(num,p)
else
maxPowN(num,p+1,maxN)
---
primeN reduce(i,acc=1)-> acc*maxPowN(i,1,natN)