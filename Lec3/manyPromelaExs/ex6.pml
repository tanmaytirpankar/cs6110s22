/* Smart reductions saved states */
byte x,y;
active proctype p1()
{do
 :: atomic { x++ ; x++ }
od }
active proctype p2()
{do
 :: atomic { y++ ; y++ }
od }
never {
do
:: skip
:: (x==3) -> break
od
}
