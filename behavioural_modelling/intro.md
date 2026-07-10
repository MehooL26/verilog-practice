- it basically lets us write the logic instead of defining each gate that needs to be used.

- we use always-begin words and the block keeps running forever, so we add a sensitivity list. So when there is a change in the sensitivity list
then only the block will be triggered.

- always @ (*) -> this will consider all the inputs instead of typing them all.

- in blocking the code runs sequentially, i.e. line by line

- multiple always blocks will run parallely at t=0.

- TYPES OF OEPRATORS:
1. ARITHMETIC : +, -, /, *, %
2. LOGICAL : && -> Logical AND, || -> Logical OR, ! -> Logical NOT -- gives True or False as output
3. RELATIONAL : <, >, <=, >=, ==, ===, !=, !==
4. BITWISE : ~, &, |, ^, ~^
