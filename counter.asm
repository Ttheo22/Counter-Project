org 00000h
ajmp start

org 30h

clr a

Start:
    mov c, p3.0       ; Move the bit from port P3.0 to the carry flag
    jc Start          ; Jump back to Start if the carry flag is set
    inc a             ; Increment the accumulator
    mov 30h, a        ; Store the value of the accumulator in address 30h
    acall hextobcd    ; Call the subroutine to convert hex to BCD
    mov p1, a         ; Move the result to port P1
    ajmp Start        ; Jump back to Start

hextobcd:
    clr c             ; Clear the carry flag
    mov a, 30h        ; Move the value at address 30h to the accumulator
    mov b, #100       ; Load 100 into register B
    div ab            ; Divide A by B (A/B), quotient in A, remainder in B
    mov 29h, a        ; Store the quotient (hundreds place) in 29h
    mov r0, #29h      ; Set R0 to 29h
    movx @r0, a       ; Store the value of A at the external RAM address pointed to by R0
    clr c             ; Clear the carry flag again
    mov a, b          ; Move the remainder to A
    mov b, #10        ; Load 10 into B
    div ab            ; Divide A by B (A/B), quotient in A, remainder in B
    mov 2Ah, a        ; Store the quotient (tens place) in 2Ah
    inc r0            ; Increment R0
    movx @r0, a       ; Store the value of A at the external RAM address pointed to by R0
    mov a, b          ; Move the remainder (units place) to A
    mov 2Bh, a        ; Store the units place in 2Bh
    inc r0            ; Increment R0
    movx @r0, a       ; Store the value of A at the external RAM address pointed to by R0
    clr rs0           ; Clear RS0 to select register bank 0
    clr rs1           ; Clear RS1 to select register bank 0
    mov a, 2Ah        ; Move the value at 2Ah to A
    rl a              ; Rotate left A (4 times to shift BCD positions)
    rl a
    rl a
    rl a
    orl a, 2Bh        ; OR A with 2Bh to combine tens and units places
    mov 2fh, a        ; Store the final BCD result in 2fh
    ret               ; Return from the subroutine

end
