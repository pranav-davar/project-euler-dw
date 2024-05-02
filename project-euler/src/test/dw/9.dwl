%dw 2.0
output application/json
fun oddTri(x)=
[x, (x*x-1)/2, (x*x+1)/2]

fun evenTri(x)=
[x, pow((x/2),2)-1, pow((x/2),2)+1]

fun tripletPyth(N,v)=
do {
    var out=if((v mod 2) == 0)
    evenTri(v)
    else
    oddTri(v)
    ---
    if(sum(out) == N)
    out
    else
    if(v>N)
    []
    else
    if((N mod sum(out))==0)
    out map $*N/sum(out)
    else
    tripletPyth(N,v+1)
}
var maxSum=1000
---
tripletPyth(maxSum,3) reduce $*$$