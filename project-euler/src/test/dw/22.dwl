%dw 2.5
output application/json
var inp= "[" ++ readUrl("classpath://0022_names.txt", "text") ++ "]"
var names=read(inp,'application/json') orderBy $
var totalNames=sizeOf(names) 
var alphabets={
  A:1,
  B:2,
  C:3,
  D:4,
  E:5,
  F:6,
  G:7,
  H:8,
  I:9,
  J:10,
  K:11,
  L:12,
  M:13,
  N:14,
  O:15,
  P:16,
  Q:17,
  R:18,
  S:19,
  T:20,
  U:21,
  V:22,
  W:23,
  X:24,
  Y:25,
  Z:26
}
fun valOfWord(word)=
do{
  var alp=word splitBy ""
  ---
  alp reduce ((it, acc=0) -> acc+alphabets[it])
}
---
(1 to totalNames) reduce (it, acc=0)-> acc+ it*valOfWord(names[it-1])