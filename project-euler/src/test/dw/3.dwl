%dw 2.0
output application/json
var in=600851475143

// Function to find if a number is Prime or Not
fun isPrime(num) = 
    if( num == 2)
        true 
    else 
        if((num mod 2) == 0)
            false
        else 
        do {
            var sq= floor(sqrt(num))
            var mid= floor(sq/2)
            ---
            if(sq <=1)
            true
            else
            (mid to 1) reduce (i,acc=true) -> if((num mod (2*i+1))==0) acc and false else acc

        }

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