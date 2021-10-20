.data
str1:    .string "Hello World"
str2:    .string "Length of the last word is "
space:   .string " "
a:       .string "a"

.text
# s1 = str1 address
# s2 = space
# s3 = counter
# t1 = str1[i]

main:
        #function:lengthOfLastWord(char * s)
        la          s1, str1
        lb          s2, space
        lb          s4, 5(s1)
        add         s3, x0, x0
        jal         ra, loop1
        #if the last letter is space, find the position of the last letter is not space
        lb          t0, 0(s1) 
        jal         ra, loop2
        jal         ra, loop3
        jal         ra, print
        li          a7, 10
        ecall
        
loop1:
        addi        s1, s1, 1 #find the last position of the string
        lb          t0, 0(s1)
        bne         t0, x0, loop1
        ret
        
loop2:
        addi        s1, s1, -1    #s--
        lb          t0, 0(s1)     #t0=char[i](s), i=length(s)-1
        beq         t0, s2, loop2 #while(char[i]==" ")
        ret

loop3:
        addi        s1, s1, -1    #s--
        lb          t0, 0(s1)     #t1=char[i](s), i=last word
        addi        s3, s3, 1     #length++
        bne         t0, s2, loop3 #while(char[i]!=" ")
        ret


print:
        la          a0, str2
        addi        a7, x0, 4
        ecall
        add         a0, s3, x0
        li          a7, 1
        ecall
        ret
        