%dw 2.5
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
// function to find next prime number
fun nextPrime(val)=
do{
  var tmp= if(val == 2) val+1 else val + 2
  ---
  if(isPrime(tmp))
  tmp
  else
  nextPrime(tmp)
}