    @100
    D=A
    @R0
    M=D
    @10
    D=A
    @R1
    M=D
    @0
    D=A
    @R2
    M=D
(LOOP)
    // D = condition
    @R0
    D=A
    @R1
    D=D-A
    @LOOP_END
    D;JEQ
    // code
    @R0
    D=M
    @R2
    M=M+D
    @LOOP
    0;JMP
(LOOP_END)