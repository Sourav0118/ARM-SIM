# ARM-SIM

ARM SIM is a simulator which help you code in assembly level language. This repo helps you learn some basics of assembly language. 

Memory  - program data -> variables and constants

**PC - program counter** : it points to an instructions in a program after executing an instructions, it points to the next instructions by default a branch instruction make the PC point to another instructions(not in the sequence)

**CPU** - contains the PC contains registers


**single instruction ISA**

sbn-subtract and branch if -ve

		a1: sbn temp, b, 2
		
this means that subtract b from temp, if -ve then send to 2nd line of code, temp = temp - b

**von neumann architecture**

  1. cpu contains control unit and ALU
  2. CPU interacts with data memory and input/output devices

**Harvard architecture**
		
  1. it has in addition with data memory, an instruction memory
  2. CU and ALU are independent


    a1: mov r1, #4   // _here we assign the address as a1_
    a2: mov r2, #5
    b a1             // _here we branch our counter to a1 i.e. it will point the counter to a1. This is an unconditional branching or infinite loop_


if you add **s** in front of add or sub then the CPSR (flaging registers) will be updated. It will  flag the Z=0 when ever the value is zero

**ldr** is used to put the address into the register from the memory.

    d1: .byte 21, 25     // _this will create a statement in the memory with 8 bits storing 21 and 25_
    
.word           // _this can store 4 bytes in the memory._

    ldr r1, =d1     // _this will store the address of d1 in r1 register_
    ldr r5, [r1]    // _this will now store the value in r5 stored in the address stored in the r1 register_
    str r1, [r5] 

* .text    // _telling the compiler that it is the code not the data_
* .global_start   // _telling this is my global start variable_  

**LDM** means load multiple 

**STM** means store multiple


**descending stack**: that grows downward

**accending stack**: tjat grows upwards


**Full stack**: that points to the last item in the stack

**Empty stack**: that points to the next free space in the stack


**STMFD**: store the stack with registers in decending fashion such that it is a Full stack

**LDMFD**: load the stack with registers in decending fashion such that it is a Full stack

**STMFA**: store the stack with registers in ascending fashion such that it is a Full stack

**LDMFA**: load the stack with registers in ascending fashion such that it is a Full stack

**STMED**: store the stack with registers in decending fashion such that it is a Empty stack

**LDMED**: load the stack with registers in decending fashion such that it is a Empty stack

**STMEA**: store the stack with registers in ascending fashion such that it is a Empty stack

**LDMEA**: load the stack with registers in ascending fashion such that it is a Empty stack


**IT** refers to If-Then (next instruction is conditional)

**ITT** refers to If-Then-Then (next 2 instructions are conditional)

**ITE** refers to If-Then-Else (next 2 instructions are conditional)

**ITTE** refers to If-Then-Then-Else (next 3 instructions are conditional)
**ITTEE** refers to If-Then-Then-Else-Else (next 4 instructions are conditional) means store multiple

## Problem statement of Calculator.s

Let us define our customized floating point number system (called as NFP => New Floating-Point number) in 32 bits as follows:
* **Sign bit**: most significant bit (0 => the number is positive, 1=> the number is negative)
* **2’compliment exponent**: next 12 bits
* **Mantissa**: rest 19 bits
  
All these floating-point numbers are in normalized format.

Write Assembly Language program to Add and Multiply two LPFP numbers. Also write additional code / data to test these functions.

**Note**:
* Implementation must be modular.
* You need to write nfpAdd and nfpMultiply as two functions.
* Data must be taken from memory. And After computation the result has to be put into memory.
* Each function assumes that address is stored in register [r1] from where the two 32-bit NFP numbers must be taken.
* And the result needs to be put into location pointed by register [r1] just after the input data.
* All registers (except [r1]) used inside your functions must be restored to its original value after the end of function call.
