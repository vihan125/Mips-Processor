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

 
