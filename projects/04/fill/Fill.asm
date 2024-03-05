// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen
// by writing 'black' in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen by writing
// 'white' in every pixel;
// the screen should remain fully clear as long as no key is pressed.

//// Replace this comment with your code.
(LOOP)
    // D = condition
    //Memory Counter
    @MEM
    M=0
    
    (WHITE)
        @KBD
        D=M
        @BLACK
        D;JNE
        
        @MEM
        D=M
        @8191
        D=D-A
        @MEMRST
        D;JEQ
        //SCREEN MEM fill White
        @SCREEN
        D=A
        @MEM
        D=D+A
        @R0
        M=D
        @0
        D=A
        @R0
        A=M
        M=D
        @MEM
        M=M+1
        @WHITE
        A;JMP
    (WHITE_END)
    
    (BLACK)
    
        @KBD
        D=M
        @WHITE
        D;JEQ
    
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