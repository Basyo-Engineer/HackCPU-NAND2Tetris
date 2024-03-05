(LOOP)
    // D = condition
    //Memory Counter
    @MEM
    M=0
    @R0
    M=0
    (BLACK)
        @MEM
        D=M
        @8191
        D=D-A
        @MEMRST
        D;JEQ

        //SCREEN MEM fill Black
        @SCREEN
        D=A
        @MEM
        D=D+M
        @R0
        M=D
        D=-1
        @R0
        A=M
        M=D
        @MEM
        M=M+1
        @BLACK
        0;JMP

    (BLACK_END)
(LOOP_END)