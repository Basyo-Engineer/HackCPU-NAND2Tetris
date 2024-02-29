@R2
M=D //R2=0
@0
D=A
@i
M=D //i=0
(LOOP)
    // D = condition
    //i =R1 ?
    @i
    D=M
    @R1
    D=D-M
    @LOOP_END
    D;JEQ
    
    // code
    @R0
    D=M
    @R2
    M=M+D
    @i
    M=M+1
    @LOOP
    0;JMP
(LOOP_END)
    @LOOP_END
    0;JMP
