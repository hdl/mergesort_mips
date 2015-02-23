.text
.globl main

main:
addi   sp,sp,-64
sw  ra,60(sp)
sw  s8,56(sp)
move    s8,sp
#int a[10];
#merge(a, 0, 10, 5);
addi   v0,s8,16
move    a0,v0
move    a1,zero
li  a2,10
li  a3,5
jal 0 <merge>
nop
move    sp,s8
lw  ra,60(sp)
lw  s8,56(sp)
addi   sp,sp,64
jr  ra
nop

merge:
#void merge(int *a, int low, int high, int mid){
        addi	sp,sp,-224
        sw	s8,220(sp)
        move	s8,sp
        sw	a0,224(s8)
        sw	a1,228(s8)
        sw	a2,232(s8)
        sw	a3,236(s8)
#int i, j, k, c[50];
#i =low;
        lw	v0,228(s8)
        sw	v0,0(s8)
#k =low;
        lw	v0,228(s8)
        sw	v0,8(s8)
#j =mid+1;
        lw	v0,236(s8)
        addi	v0,v0,1
        sw	v0,4(s8)

#jump!
        j	 loop1check #f4 <merge+0xf4>
        nop
loop1inci:
#if(a[i]<a[j]){
        lw	v0,0(s8)
        sll	v0,v0,0x2
        lw	v1,224(s8)
        addu	v0,v1,v0
        lw	v1,0(v0)
        lw	v0,4(s8)
        sll	v0,v0,0x2
        lw	a0,224(s8)
        addu	v0,a0,v0
        lw	v0,0(v0)
        slt	v0,v1,v0
        beqz	v0,loop1incj #b8 <merge+0xb8>
        nop
#c[k]=a[i];
        lw	v0,0(s8)
        sll	v0,v0,0x2
        lw	v1,224(s8)
        addu	v0,v1,v0
        lw	v1,0(v0)
        lw	v0,8(s8)
        sll	v0,v0,0x2
        addu	v0,s8,v0
        sw	v1,12(v0)
#k++;
        lw	v0,8(s8)
        addi	v0,v0,1
        sw	v0,8(s8)
#i++;
        lw	v0,0(s8)
        addi	v0,v0,1
        sw	v0,0(s8)
        j	loop1check #f4 <merge+0xf4>
        nop
loop1incj:
#else
        lw	v0,4(s8)
        sll	v0,v0,0x2
        lw	v1,224(s8)
        addu	v0,v1,v0
        lw	v1,0(v0)
        lw	v0,8(s8)
        sll	v0,v0,0x2
        addu	v0,s8,v0
        sw	v1,12(v0)
#k++;
        lw	v0,8(s8)
        addi	v0,v0,1
        sw	v0,8(s8)
#j++;
        lw	v0,4(s8)
        addi	v0,v0,1
        sw	v0,4(s8)


loop1check:
#while(i<=mid && j<=high){
        lw	v1,0(s8)
        lw	v0,236(s8)
        slt	v0,v0,v1
        bnez	v0,loop2check #160 <merge+0x160>
        nop
        lw	v1,4(s8)
        lw	v0,232(s8)
        slt	v0,v0,v1
        beqz	v0, loop1inci #40 #<merge+0x40>
        nop



#jump   while(i<=mid){
        j	loop2check #160 <merge+0x160>
        nop
loop2inc:
#c[k]=a[i];
        lw	v0,0(s8)
        sll	v0,v0,0x2
        lw	v1,224(s8)
        addu	v0,v1,v0
        lw	v1,0(v0)
        lw	v0,8(s8)
        sll	v0,v0,0x2
        addu	v0,s8,v0
        sw	v1,12(v0)
#        k++;
        lw	v0,8(s8)
        addi	v0,v0,1
        sw	v0,8(s8)
#            i++;
        lw	v0,0(s8)
        addi	v0,v0,1
        sw	v0,0(s8)
#           c[k]=a[j];
#          k++;
#         j++;
loop2check:
#   while(i<=mid){
    lw	v1,0(s8)
        lw	v0,236(s8)
        slt	v0,v0,v1
        beqz	v0,loop2inc #124 <merge+0x124>
        nop



#    while(j<=high){
        j	loop3check #1b8 <merge+0x1b8>
        nop
loop3inc:
#c[k]=a[j];
        lw	v0,4(s8)
        sll	v0,v0,0x2
        lw	v1,224(s8)
        addu	v0,v1,v0
        lw	v1,0(v0)
        lw	v0,8(s8)
        sll	v0,v0,0x2
        addu	v0,s8,v0
        sw	v1,12(v0)
        #k++;
        lw	v0,8(s8)
        addi	v0,v0,1
        sw	v0,8(s8)
#j++;
        lw	v0,4(s8)
        addi	v0,v0,1
        sw	v0,4(s8)
        c[k]=a[i];
    #k++;
    #i++;
loop3check:
#while(j<=high){
        lw	v1,4(s8)
        lw	v0,232(s8)
        slt	v0,v0,v1
        beqz	v0,loop3inc #17c <merge+0x17c>
        nop



#for(i=low; i<k; i++){
        lw	v0,228(s8)
        sw	v0,0(s8)
        j	loop4check #20c <merge+0x20c>
        nop
        #a[i]=c[i];
loop4inc:
        lw	v0,0(s8)
        sll	v0,v0,0x2
        lw	v1,224(s8)
        addu	v1,v1,v0
        lw	v0,0(s8)
        sll	v0,v0,0x2
        addu	v0,s8,v0
        lw	v0,12(v0)
        sw	v0,0(v1)

        #for(i=low; i<k; i++){
        lw	v0,0(s8)
        addi	v0,v0,1
        sw	v0,0(s8)
loop4check:
        lw	v1,0(s8)
        lw	v0,8(s8)
        slt	v0,v1,v0
        bnez	v0,loop4inc #1dc <merge+0x1dc>
        nop
#function return
        move	sp,s8
        lw	s8,220(sp)
        addi	sp,sp,224
        jr	ra
        nop





