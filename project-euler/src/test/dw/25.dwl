%dw 2.5
output application/json
fun nthDigitFibN(num,n)=
do{
    var i=num[0]
    var j=num[1]
    var index=num[2]
    ---
    if(sizeOf(i+j)==n)
    index +1
    else
    nthDigitFibN([i+j,i,index+1],n)
}

---
nthDigitFibN([1,1,2],1000)