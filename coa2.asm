.model small
.stack 100h
.data
    a db "take input !$"   ;for printing   taken input
    
.code ;main function
main proc ;start the proces
    mov ax,@data ;data
    mov ds,ax    
    
    mov ah,9     ;9 means string output
    lea  dx,a    ;load effective address
    int 21h      ;output will be shown
    mov ah,2     ;for input  
    mov dl,10
    int 21h     ;output will be shown
    mov dl,13
    int 21h       ;;output will be shown
    
    mov ah,1  ;single val input
    int 21h 
    mov bh,al 
     mov ah,1  ;single val input
    int 21h
     mov ch,al  ;address store bh
     mov cl,bh
     
     add bh,ch   ;bh+ch
     sub bh,30h  ;for sub  //emoji will be print 
         mov ah,2 ;output and ah,2 is for int     for int output 2
    mov dl,bh
    int 21h

     
     sub cl,ch
     add cl,30h ;for addsion output  //aa will be print for 22
     
      mov ah,2     ;for newline 
    mov dl,10   ;address load dl 
    int 21h     
    mov dl,13
    int 21h   
    
    mov ah,2 ;output
    mov dl,bh
    int 21h 
    mov ah,2 ;output and ah,2 is for int     for int output 2
    mov dl,cl
    int 21h  ;output shown
    
    mov ah,4ch    ;closing work
    int 21h
    main endp
end main
    
    
    
