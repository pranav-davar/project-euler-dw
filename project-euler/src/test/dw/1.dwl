%dw 2.0
output application/json
var n=1000
---
(1 to n-1) reduce(v,acc=0) -> if ((v mod 3) == 0 or (v mod 5) == 0) acc+v else acc