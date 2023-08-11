.equ	MY_PORTD	= 0x0b
.equ	MY_DDRD	= 0x0a
.equ	MY_PIND	= 0x09
.equ	MY_PORTC	= 0x08
.equ	MY_DDRC	= 0x07
.equ	MY_PINC	= 0x06
.equ	MY_PORTB	= 0x05
.equ	MY_DDRB	= 0x04
.equ	MY_PINB	= 0x03

; Define constants
.equ LED_DDR = MY_DDRB        ; Port B Data Direction Register
.equ LED_PORT = MY_PORTB      ; Port B Output Register
.equ LED_PIN = MY_PINB        ; Port B Input Register
.equ LED_BIT = 5           ; Bit position for the LED on pin 13

; Set up initial conditions
ldi r16, (1 << LED_BIT)   ; Create a mask for the LED bit
ldi r17, 0xFF            ; Set all bits of PORTB to output (for LED control)

; Set LED pin as output
sbi LED_DDR, LED_BIT

loop:
; Turn on the LED
sbi LED_PORT, LED_BIT

; Delay for a certain period of time (adjust as needed)
ldi r18, 0xFF
delay_loop:
    dec r18
    brne delay_loop

; Turn off the LED
cbi LED_PORT, LED_BIT

; Delay for a certain period of time (adjust as needed)
ldi r18, 0xFF
delay_loop2:
    dec r18
    brne delay_loop2

rjmp loop                ; Jump back to the beginning of the loop