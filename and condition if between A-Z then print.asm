;if between A-Z then print it
.model small
.stack 100h
.data
msg db "enter a character: $"
var db ?
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg
        int 21h
        
        mov ah,1
        int 21h
        
        cmp al,'Z'
        jg exit
        jle level1
        
        level1:
        cmp al,'A'
        jl exit
        
        mov ah,2
        mov dl,al
        int 21h
        
        exit:
        main endp
    end main
