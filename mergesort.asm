
mergesort.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <merge>:
void merge(int *a, int low, int high, int mid){
   0:	27bdff20 	addiu	sp,sp,-224
   4:	afbe00dc 	sw	s8,220(sp)
   8:	03a0f021 	move	s8,sp
   c:	afc400e0 	sw	a0,224(s8)
  10:	afc500e4 	sw	a1,228(s8)
  14:	afc600e8 	sw	a2,232(s8)
  18:	afc700ec 	sw	a3,236(s8)
    int i, j, k, c[50];
    i =low;
  1c:	8fc200e4 	lw	v0,228(s8)
  20:	afc20000 	sw	v0,0(s8)
    k =low;
  24:	8fc200e4 	lw	v0,228(s8)
  28:	afc20008 	sw	v0,8(s8)
    j =mid+1;
  2c:	8fc200ec 	lw	v0,236(s8)
  30:	24420001 	addiu	v0,v0,1
  34:	afc20004 	sw	v0,4(s8)
    while(i<=mid && j<=high){
  38:	0800003d 	j	f4 <merge+0xf4>
  3c:	00000000 	nop
        if(a[i]<a[j]){
  40:	8fc20000 	lw	v0,0(s8)
  44:	00021080 	sll	v0,v0,0x2
  48:	8fc300e0 	lw	v1,224(s8)
  4c:	00621021 	addu	v0,v1,v0
  50:	8c430000 	lw	v1,0(v0)
  54:	8fc20004 	lw	v0,4(s8)
  58:	00021080 	sll	v0,v0,0x2
  5c:	8fc400e0 	lw	a0,224(s8)
  60:	00821021 	addu	v0,a0,v0
  64:	8c420000 	lw	v0,0(v0)
  68:	0062102a 	slt	v0,v1,v0
  6c:	10400012 	beqz	v0,b8 <merge+0xb8>
  70:	00000000 	nop
            c[k]=a[i];
  74:	8fc20000 	lw	v0,0(s8)
  78:	00021080 	sll	v0,v0,0x2
  7c:	8fc300e0 	lw	v1,224(s8)
  80:	00621021 	addu	v0,v1,v0
  84:	8c430000 	lw	v1,0(v0)
  88:	8fc20008 	lw	v0,8(s8)
  8c:	00021080 	sll	v0,v0,0x2
  90:	03c21021 	addu	v0,s8,v0
  94:	ac43000c 	sw	v1,12(v0)
            k++;
  98:	8fc20008 	lw	v0,8(s8)
  9c:	24420001 	addiu	v0,v0,1
  a0:	afc20008 	sw	v0,8(s8)
            j++;
  a4:	8fc20004 	lw	v0,4(s8)
  a8:	24420001 	addiu	v0,v0,1
  ac:	afc20004 	sw	v0,4(s8)
  b0:	0800003d 	j	f4 <merge+0xf4>
  b4:	00000000 	nop
        }else{
            c[k]=a[j];
  b8:	8fc20004 	lw	v0,4(s8)
  bc:	00021080 	sll	v0,v0,0x2
  c0:	8fc300e0 	lw	v1,224(s8)
  c4:	00621021 	addu	v0,v1,v0
  c8:	8c430000 	lw	v1,0(v0)
  cc:	8fc20008 	lw	v0,8(s8)
  d0:	00021080 	sll	v0,v0,0x2
  d4:	03c21021 	addu	v0,s8,v0
  d8:	ac43000c 	sw	v1,12(v0)
            k++;
  dc:	8fc20008 	lw	v0,8(s8)
  e0:	24420001 	addiu	v0,v0,1
  e4:	afc20008 	sw	v0,8(s8)
            j++;
  e8:	8fc20004 	lw	v0,4(s8)
  ec:	24420001 	addiu	v0,v0,1
  f0:	afc20004 	sw	v0,4(s8)
void merge(int *a, int low, int high, int mid){
    int i, j, k, c[50];
    i =low;
    k =low;
    j =mid+1;
    while(i<=mid && j<=high){
  f4:	8fc30000 	lw	v1,0(s8)
  f8:	8fc200ec 	lw	v0,236(s8)
  fc:	0043102a 	slt	v0,v0,v1
 100:	14400017 	bnez	v0,160 <merge+0x160>
 104:	00000000 	nop
 108:	8fc30004 	lw	v1,4(s8)
 10c:	8fc200e8 	lw	v0,232(s8)
 110:	0043102a 	slt	v0,v0,v1
 114:	1040ffca 	beqz	v0,40 <merge+0x40>
 118:	00000000 	nop
            c[k]=a[j];
            k++;
            j++;
        }
    }
    while(i<=mid){
 11c:	08000058 	j	160 <merge+0x160>
 120:	00000000 	nop
        c[k]=a[j];
 124:	8fc20004 	lw	v0,4(s8)
 128:	00021080 	sll	v0,v0,0x2
 12c:	8fc300e0 	lw	v1,224(s8)
 130:	00621021 	addu	v0,v1,v0
 134:	8c430000 	lw	v1,0(v0)
 138:	8fc20008 	lw	v0,8(s8)
 13c:	00021080 	sll	v0,v0,0x2
 140:	03c21021 	addu	v0,s8,v0
 144:	ac43000c 	sw	v1,12(v0)
        k++;
 148:	8fc20008 	lw	v0,8(s8)
 14c:	24420001 	addiu	v0,v0,1
 150:	afc20008 	sw	v0,8(s8)
        i++;
 154:	8fc20000 	lw	v0,0(s8)
 158:	24420001 	addiu	v0,v0,1
 15c:	afc20000 	sw	v0,0(s8)
            c[k]=a[j];
            k++;
            j++;
        }
    }
    while(i<=mid){
 160:	8fc30000 	lw	v1,0(s8)
 164:	8fc200ec 	lw	v0,236(s8)
 168:	0043102a 	slt	v0,v0,v1
 16c:	1040ffed 	beqz	v0,124 <merge+0x124>
 170:	00000000 	nop
        c[k]=a[j];
        k++;
        i++;

    }
    while(j<=high){
 174:	0800006e 	j	1b8 <merge+0x1b8>
 178:	00000000 	nop
        c[k]=a[j];
 17c:	8fc20004 	lw	v0,4(s8)
 180:	00021080 	sll	v0,v0,0x2
 184:	8fc300e0 	lw	v1,224(s8)
 188:	00621021 	addu	v0,v1,v0
 18c:	8c430000 	lw	v1,0(v0)
 190:	8fc20008 	lw	v0,8(s8)
 194:	00021080 	sll	v0,v0,0x2
 198:	03c21021 	addu	v0,s8,v0
 19c:	ac43000c 	sw	v1,12(v0)
        k++;
 1a0:	8fc20008 	lw	v0,8(s8)
 1a4:	24420001 	addiu	v0,v0,1
 1a8:	afc20008 	sw	v0,8(s8)
        j++;
 1ac:	8fc20004 	lw	v0,4(s8)
 1b0:	24420001 	addiu	v0,v0,1
 1b4:	afc20004 	sw	v0,4(s8)
        c[k]=a[j];
        k++;
        i++;

    }
    while(j<=high){
 1b8:	8fc30004 	lw	v1,4(s8)
 1bc:	8fc200e8 	lw	v0,232(s8)
 1c0:	0043102a 	slt	v0,v0,v1
 1c4:	1040ffed 	beqz	v0,17c <merge+0x17c>
 1c8:	00000000 	nop
        c[k]=a[j];
        k++;
        j++;
    }
    for(i=low; i<k; i++){
 1cc:	8fc200e4 	lw	v0,228(s8)
 1d0:	afc20000 	sw	v0,0(s8)
 1d4:	08000083 	j	20c <merge+0x20c>
 1d8:	00000000 	nop
        a[i]=c[i];
 1dc:	8fc20000 	lw	v0,0(s8)
 1e0:	00021080 	sll	v0,v0,0x2
 1e4:	8fc300e0 	lw	v1,224(s8)
 1e8:	00621821 	addu	v1,v1,v0
 1ec:	8fc20000 	lw	v0,0(s8)
 1f0:	00021080 	sll	v0,v0,0x2
 1f4:	03c21021 	addu	v0,s8,v0
 1f8:	8c42000c 	lw	v0,12(v0)
 1fc:	ac620000 	sw	v0,0(v1)
    while(j<=high){
        c[k]=a[j];
        k++;
        j++;
    }
    for(i=low; i<k; i++){
 200:	8fc20000 	lw	v0,0(s8)
 204:	24420001 	addiu	v0,v0,1
 208:	afc20000 	sw	v0,0(s8)
 20c:	8fc30000 	lw	v1,0(s8)
 210:	8fc20008 	lw	v0,8(s8)
 214:	0062102a 	slt	v0,v1,v0
 218:	1440fff0 	bnez	v0,1dc <merge+0x1dc>
 21c:	00000000 	nop
        a[i]=c[i];
    }

}
 220:	03c0e821 	move	sp,s8
 224:	8fbe00dc 	lw	s8,220(sp)
 228:	27bd00e0 	addiu	sp,sp,224
 22c:	03e00008 	jr	ra
 230:	00000000 	nop

00000234 <mergesort>:


void mergesort(int *a, int low, int high){
 234:	27bdffe0 	addiu	sp,sp,-32
 238:	afbf001c 	sw	ra,28(sp)
 23c:	afbe0018 	sw	s8,24(sp)
 240:	03a0f021 	move	s8,sp
 244:	afc40020 	sw	a0,32(s8)
 248:	afc50024 	sw	a1,36(s8)
 24c:	afc60028 	sw	a2,40(s8)
    int mid;
    if(low<high){
 250:	8fc30024 	lw	v1,36(s8)
 254:	8fc20028 	lw	v0,40(s8)
 258:	0062102a 	slt	v0,v1,v0
 25c:	1040001a 	beqz	v0,2c8 <mergesort+0x94>
 260:	00000000 	nop
        mid = (low+high)/2;
 264:	8fc30024 	lw	v1,36(s8)
 268:	8fc20028 	lw	v0,40(s8)
 26c:	00621021 	addu	v0,v1,v0
 270:	00021fc2 	srl	v1,v0,0x1f
 274:	00621021 	addu	v0,v1,v0
 278:	00021043 	sra	v0,v0,0x1
 27c:	afc20010 	sw	v0,16(s8)
        mergesort(a, low, mid);
 280:	8fc40020 	lw	a0,32(s8)
 284:	8fc50024 	lw	a1,36(s8)
 288:	8fc60010 	lw	a2,16(s8)
 28c:	0c000000 	jal	0 <merge>
 290:	00000000 	nop
        mergesort(a, mid+1, high);
 294:	8fc20010 	lw	v0,16(s8)
 298:	24420001 	addiu	v0,v0,1
 29c:	8fc40020 	lw	a0,32(s8)
 2a0:	00402821 	move	a1,v0
 2a4:	8fc60028 	lw	a2,40(s8)
 2a8:	0c000000 	jal	0 <merge>
 2ac:	00000000 	nop
        merge(a, low, high, mid);
 2b0:	8fc40020 	lw	a0,32(s8)
 2b4:	8fc50024 	lw	a1,36(s8)
 2b8:	8fc60028 	lw	a2,40(s8)
 2bc:	8fc70010 	lw	a3,16(s8)
 2c0:	0c000000 	jal	0 <merge>
 2c4:	00000000 	nop
    }
    return ;
 2c8:	00000000 	nop
}
 2cc:	03c0e821 	move	sp,s8
 2d0:	8fbf001c 	lw	ra,28(sp)
 2d4:	8fbe0018 	lw	s8,24(sp)
 2d8:	27bd0020 	addiu	sp,sp,32
 2dc:	03e00008 	jr	ra
 2e0:	00000000 	nop

000002e4 <main>:

int main(){
 2e4:	27bdffd8 	addiu	sp,sp,-40
 2e8:	afbf0024 	sw	ra,36(sp)
 2ec:	afbe0020 	sw	s8,32(sp)
 2f0:	03a0f021 	move	s8,sp
    int a[4];
    a[0]=1;
 2f4:	24020001 	li	v0,1
 2f8:	afc20010 	sw	v0,16(s8)
    a[1]=2;
 2fc:	24020002 	li	v0,2
 300:	afc20014 	sw	v0,20(s8)
    a[2]=4;
 304:	24020004 	li	v0,4
 308:	afc20018 	sw	v0,24(s8)
    a[3]=3;
 30c:	24020003 	li	v0,3
 310:	afc2001c 	sw	v0,28(s8)

    mergesort(a, 0, 4);
 314:	27c20010 	addiu	v0,s8,16
 318:	00402021 	move	a0,v0
 31c:	00002821 	move	a1,zero
 320:	24060004 	li	a2,4
 324:	0c000000 	jal	0 <merge>
 328:	00000000 	nop
    return 0;
 32c:	00001021 	move	v0,zero
}
 330:	03c0e821 	move	sp,s8
 334:	8fbf0024 	lw	ra,36(sp)
 338:	8fbe0020 	lw	s8,32(sp)
 33c:	27bd0028 	addiu	sp,sp,40
 340:	03e00008 	jr	ra
 344:	00000000 	nop
