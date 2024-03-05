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
        A;JEQ

        //SCREEN MEM fill Black
        @SCREEN
        D=A
        @MEM
        D=D+A
        @R0
        M=D
        @65535
        D=A
        @R0
        A=M
        M=D
        @MEM
        M=M+1
        @BLACK
        A;JMP

    (BLACK_END)
    (MEMRST)
        @0
        D=A
        @MEM
        M=D
        @LOOP
        A;JMP
    (MEMRST_END)
    @LOOP
    0;JMP
(LOOP_END)