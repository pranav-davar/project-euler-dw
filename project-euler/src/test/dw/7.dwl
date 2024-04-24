%dw 2.0
output application/json
import * from prime


var nth=10001
---
(1 to nth-1) reduce(it, acc=2) -> nextPrime(acc)