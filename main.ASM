        LIST P=16F84A
        #include <p16f84a.inc>

                ORG     0       
                GOTO    Start


                ORG     H'30'
Start

                BSF     STATUS, RP0     ; TRISA register in bank 1
                CLRF    TRISA

                MOVLW   0x0            ; SET bits to 0 for output
                MOVWF   TRISA

                BCF     STATUS, RP0     ; PORTA register in bank 2
                CLRF    PORTA

                MOVLW   0xF
                MOVWF   PORTA           ; pull all pins high   

Loop
                GOTO    Loop            

                END

