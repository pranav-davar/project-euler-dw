%dw 2.5
output application/json
var inp_grid=(readUrl("classpath://20x20_grid.txt", "text/plain") splitBy ('\n')) map ($ splitBy(" "))
var horz_max=(0 to 16) reduce (r, accr=0)-> do{
var tmpr= ((0 to 16) reduce(in, acc=0)-> do {
    var tmp=inp_grid[r][in]*inp_grid[r][in+1]*inp_grid[r][in+2]*inp_grid[r][in+3]
    ---
    if (tmp>acc)
        tmp
    else
    acc
    })
---
if (tmpr>accr)
    tmpr
    else 
    accr
}

var vert_max =(0 to 16) reduce (r, accr=0)-> do{
var tmpr= ((0 to 16) reduce(in, acc=0)-> do {
    var tmp=inp_grid[r][in]*inp_grid[r+1][in]*inp_grid[r+2][in]*inp_grid[r+3][in]
    ---
    if (tmp>acc)
        tmp
    else
    acc
    })
---
if (tmpr>accr)
    tmpr
    else 
    accr
}

var diagr_max =(0 to 16) reduce (r, accr=0)-> do{
var tmpr= ((0 to 16) reduce(in, acc=0)-> do {
    var tmp=inp_grid[r][in]*inp_grid[r+1][in+1]*inp_grid[r+2][in+2]*inp_grid[r+3][in+3]
    ---
    if (tmp>acc)
        tmp
    else
    acc
    })
---
if (tmpr>accr)
    tmpr
    else 
    accr
}
var diagl_max =(0 to 16) reduce (r, accr=0)-> do{
var tmpr= ((0 to 16) reduce(in, acc=0)-> do {
    var tmp=inp_grid[r][19-in]*inp_grid[r+1][18-in]*inp_grid[r+2][17-in]*inp_grid[r+3][16-in]
    ---
    if (tmp>acc)
        tmp
    else
    acc
    })
---
if (tmpr>accr)
    tmpr
    else 
    accr
}
---
max([horz_max, vert_max,diagr_max, diagl_max])