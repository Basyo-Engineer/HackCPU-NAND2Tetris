@10
D=A
@R0
M=D //R0=10
@10
D=A
@R1
M=D //R1=10
@0
D=A
@R2
M=D //R2=0
@0
D=A
@i
M=D //i=0
(LOOP)
    // D = condition
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
