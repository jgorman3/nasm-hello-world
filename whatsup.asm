        global        start
        section        .text
start:
        mov        rax,0x2000004
        mov        rdi,1
        mov        rsi,phrase
        mov        rdx,17
        syscall

        mov        rax,0x2000001
        mov        rdi,0
        syscall    
    
        section        .data
phrase:    db        ‘最近怎么样？’,10
