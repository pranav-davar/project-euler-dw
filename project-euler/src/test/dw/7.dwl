%dw 2.0
output application/json
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
fun nextPrime(val)=
do{
  var tmp= if(val == 2) val+1 else val + 2
  ---
  if(isPrime(tmp))
  tmp
  else
  nextPrime(tmp)
}

var nth=10001
---
(1 to nth-1) reduce(it, acc=2) -> nextPrime(acc)