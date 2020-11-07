@a
D=M
@b
D=D-M

//d now holds a-b

@ELSEPART
D;JLE
//jump to else if a-b <= 0

//if we don't jump before
//we reach here, and c = a - b

//set c
@c
M=D

//jump to end of if statement
@ENDIF
0;JMP

(ELSEPART)

//if we reach here, c = - (a - b)

//set c
@c
M=-D

//end of if anyways
(ENDIF)

(END)
@END
0;JMP