# LC-3
## Download LC-3 Simulator
- LC-3 Simulator [[Download]](https://highered.mheducation.com/sites/0072467509/student_view0/lc-3_simulator.html)

## Assembly language
- A sentence of assembly language corresponds to a machine code of an instruction.
- One high-level language corresponds to multiple instructions.
- ... ;comment
- Whitespace and comments are ignored.
- Case insensitive
- Instruction set
  - Data processing instruction: ADD, AND, NOT
  - Control instruction: BR, JMP, JSR/JSRR, RET, RTI, TRAP
  - Memory access instruction: LD, LDI, LDR, LEA, ST, STI, STR

![](https://i.imgur.com/GkT5myg.png)

- Operand: register and number, separated by commas(,)
- Register: R0, R1, R2, R3, R4, R5, R6, R7
- Number: #N(decimal), xM(hexadecimal)
- Label represents the symbol of the memory location, must be placed in the first position of the line.
- Directive instruct the assembler to generate machine code. Add dot(.) in front of directive.


| Directive | Operand | Illustration |
| :-------- | :------ | :------------ |
| .ORIG     | Text    | begin of code |
| .END      | addr.   | end  of code |
| .BLKW     | Number, N | reserve N word positions |
| .FILL     | Number, N | reserve 1 position, the initial value is N |
| .STRINGZ  | a string of N characters | Reserve N + 1 position, the initial value is the string. Add a NULL(0) in the end of string to indicate the end of string. |

## Instruction Set
### ADD

### AND

### BR

### JMP / RET

### JSR / JSRR

### LD
0010 100 110101111
1) 110101111 --sign-extending--> 1111 1111 1010 1111 = -0x51
2) 
    current addr. = 0x4018 -> PC = 0x4019
    R4 = Mem[PC - 0x51] = Mem[0x4019 - 0x51]

### LDI
1010 100 111001100
1) 111001100 --sign-extending--> 1111 1111 1100 1100 = -0x34
2) 
    current addr. = 0x4018 -> PC = 0x4019
    R4 = Mem[Mem[PC - 0x34]] = Mem[Mem[0x4019 - 0x34]]

### LDR
0110 100 010 011101
1) 011101 --sign-extending--> 0000 0000 0001 1101 = 0x1D
2) 
    R4 = Mem[R2 + 0x1D] = Mem[0x4019 - 0x34]

### LEA
1110 100 111111101
1) 111111101 --sign-extending--> 1111 1111 1111 1101 = -3
2) 
    PC = current addr. + 1
    R4 = PC - 3

### NOT

### RTI

### ST
0011 100 110101111
1) 110101111 --sign-extending--> 1111 1111 1010 1111 = -0x51
2) 
    current addr. = 0x4018 -> PC = 0x4019
    Mem[PC - 0x51] = Mem[0x4019 - 0x51] = R4

### STI

### STR

### Trap
| Name | Operand  | Illustration |
| :--- | :------- | :------------ |
| HALT | Trap x25 | End the program and output the end message. |
| IN   | Trap x23 | Read the input ASCII characters, display them on the console, and store them in R0. |
| OUT  | Trap x21 | Display the characters stored in R0 on the console. |
| GETC | Trap x20 | Read the input ASCII characters and store them in R0. |
| PUTS | Trap x22 |  |

ref:
- [Introduction to Computing Systems, 2/e](https://icourse.club/uploads/files/96a2b94d4be48285f2605d843a1e6db37da9a944.pdf)
- [微算機原理及應用(II)–LC-3](https://univ.deltamoocx.net/courses/course-v1:AT+AT_003_1112+2023_02_01/course/)