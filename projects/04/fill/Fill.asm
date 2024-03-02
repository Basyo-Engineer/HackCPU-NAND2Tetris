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
    //Xpointer = 0
    @0
    D=A
    @X
    M=D
    //Ypointer = 0
    @0
    D=A
    @Y
    M=D

    @65535
    D=A
    @BLK
    M=D

    @0
    D=A
    @WHT
    M=D

    (WHITE)
        @KBD
        D=M
        @BLACK
        D;JNE
         
    (WHITE_END)
    (BLACK)
        @KBD
        D=M
        @WHITE
        D;JEQ

    (BLACK_END)
    @LOOP
    0;JMP
(LOOP_END)