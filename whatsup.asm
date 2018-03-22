        global     start
        section    .text
start:
        mov        rax,    0x2000004    ;system call for write
        mov        rdi,    1
        mov        rsi,    phrase       ;move address of string to output
        mov        rdx,    17           ;number of bytes in string
        syscall                         ;invoke OS to write

        mov        rax,    0x2000001    ;system call for exit
        mov        rdi,    0            ;exit code is 0
        syscall                         ;invoke OS to exit
    
        section    .data
phrase: db         ‘最近怎么样？’,10      ;message loaded in data section
