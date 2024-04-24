%dw 2.0
output application/json
import * from prime
var in=600851475143

fun largestPrimeFact(val)=
do {
    var sq = ceil(sqrt(val))
    var mid=ceil(sq/2)
    ---
    if((val mod sq)==0 and isPrime(sq))
    sq
    else
    (mid to 1) reduce (it, acc=0) -> if(((val mod it) == 0 ) and isPrime(it) and acc == 0) it else acc
}
---
largestPrimeFact(in)