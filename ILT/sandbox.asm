; what I want to get to at the end of the event:
section .data
    msg:     db "Hello world!"
    msg2:    db "This is asm for RISC-EPE"
    someint: dw 3

section .start
    write msg       ; output msg
    write msg2      ; output msg2

    goto somecycle
    goto somecycle

somecycle:
    add someint, 2  ; addition
    write someint   ; 5

    sub someint, 2  ; subtraction
    write someint   ; 3

; output:
;     5353