@i
M=1

@sum
M=0

(LOOP)

//condition
@i
D=M
@100
D=D-A

//check condition and jump
@END
D;JGE

//else execute
//sum = sum + i
@i
D=M
@sum
M=M+D

//i = i + 1
@i
M=M+1

//loop back to start
@LOOP
0;JMP

(END)
@END
0;JMP