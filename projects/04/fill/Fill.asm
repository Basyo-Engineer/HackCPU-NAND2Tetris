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
    @POINT
    M=0
    @C
    M=0
    @R
    M=0
    @KBD
    D=M
    @LOOP
    D;JEQ
    (YLOOP)
        @R
        D=A
        @16
        D=D-A
        @YLOOP_END
        D;JEQ
        (XLOOP)
            @C
            D=A
            @32
            D=D-A
            @XLOOP_END
            D;JEQ
            @SCREEN
            D=A
            @C
            D=D+A
            @R
            D=D+A
            @POINT
            M=D
            @65535
            D=A
            @POINT
            M=D
            @C
            M=M+1
            @XLOOP
            0;JEQ
        (XLOOP_END)
        @R
        M=M+1
        @YLOOP
        0;JEQ
    (YLOOP_END)
    @LOOP
    0;JMP
(LOOP_END)