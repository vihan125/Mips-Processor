# Pipelined MIPS_32bit_Processor

The MIPS(Microprocessor without Interlocked Pipeline Stages) processor is a RISC
(Reduced Instruction Set Computer) processor. One significance of the RISC processors is
that as the name suggests it contains much more simple instructions when compared with
their CISC (Complex Instruction Set Computer).
Pipeline processing refers to overlapping operations by moving data or instructions into a
conceptual pipe with all stages of the pipe performing simultaneously. Pipeline is mainly
used to improve throughput of the processor rather than the latency. Therefore pipelines do
not make a certain operation faster instead it allows to perform multiple tasks which are
having less dependency between them simultaneously. For example, while one instruction is
being executed, the computer is decoding the next and while decoding other instructions can
write to the registers.
But in pipelined processors due to small dependencies that exist between them pipeline
hazards can occur. Namely there are three main types of hazards as,
* Data Hazards
* Structural Hazards
* Cpntrol Hazards

Therefore handling these hazards in a pipelined processor is important to get efficient and
correct results. In this project we are implementing a pipelined MIPS with pipelined
architecture. 

## Architecture
The processor architecture of the processor in shown below,

<p align="center">
  <image src = https://github.com/vihan125/Mips-Processor/blob/main/Images/Architecture.png width="100%" height="100%">
</p>

## Results
  
The instruction set that we are going to perform in the processor is as follows. It has chosen
to cover all the XORI, SW, LW, SLT, J, JR, SUB, ADD operations implemented in the
processor.

<p align="center">
  <image src = https://github.com/vihan125/Mips-Processor/blob/main/Images/IS.PNG width="30%" height="30%">
</p>
  
Lets analyze these instructions with a more broder view considering the registers and memory locations involved.
Following figure shows the explanation of the above set of instructions and the flow of them.

<p align="center">
  <image src = https://github.com/vihan125/Mips-Processor/blob/main/Images/Instructions.png width="50%" height="50%">
</p>

Results of the timing analysis for the above set of instructions obtained from the Vivado is as follows,

<p align="center">
  <image src = https://github.com/vihan125/Mips-Processor/blob/main/Images/Result.png width="100%" height="100%">
</p>

  
 



 
