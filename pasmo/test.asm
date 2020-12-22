org $8000
    
; Define some ROM routines
ROM_CLS     EQU $0D6B
ROM_OPENCH  EQU $1601
ROM_PRINT   EQU $203C

MEM_BITMAP  EQU $4000

    
string: db 'Goodbye world!', 13
        
    
start:
    setup:
        call    ROM_CLS
        ; Open upper screen channel
        ld      a, 2
        call    ROM_OPENCH

        ld      hl, 23560         ; last keyboard system variable.
        ld      (hl), 0           ; put null value there  

        ld      b, 0
        ld      c, 20
        jp      main   
    
    main:
        ; ROM_PRINT string
        ;ld      (MEM_BITMAP), 0
        ld      de, string
        ld      bc, 15
        call    ROM_PRINT

    keystroke:
        ld      a, (hl)           ; new value of LAST K.
        cp      0                 ; is it still zero?
        jr      z, keystroke      ; yes, so no key pressed.
        ret                       ; key was pressed.
    
end start
