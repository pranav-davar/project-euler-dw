%dw 2.5
output application/json
import isPallindrome from pallindrome
---
(999 to 100) reduce (a, acc=0)-> do{
    var tmp=((a to 100) reduce ((b, ac=0) -> if(isPallindrome(a*b) and ac<a*b) a*b else ac))
    ---
    if(tmp >acc)
    tmp
    else
    acc
}