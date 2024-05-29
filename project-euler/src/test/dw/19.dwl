%dw 2.5
output application/json
var date_s="1901-01-01" as Date
var date_e="2000-12-31" as Date
---
(0 to 1199) reduce (it, acc=0)-> if( (date_s + (("P" ++ it as String ++ "M") as Period)) as String {format:"EEEE"} == 'Sunday') acc + 1 else acc