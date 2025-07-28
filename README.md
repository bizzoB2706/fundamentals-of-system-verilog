# fundamentals-of-system-verilog
Blocking and Non-Blocking 
<br>
Blocking Assignment (=)
Executes sequentially, line by line.
Each statement waits for the previous one to complete.
Best used in combinational logic or initial blocks for testing.
a = 10;
b = a;   // b gets 10
c = b;   // c gets 10

Non-Blocking assignment (<=)
Executes in parallel, scheduling all right-hand side evaluations first.
Used mainly in sequential logic for correct simulation behavior.
Ensures all assignments occur at the same simulation time step.
a <= 10;
b <= a;   // b gets old value of a
c <= b;   // c gets old value of b

1. Blocking Assignments (=)

A blocking assignment in Verilog executes immediately and in the order the code is written. Each statement must complete before the next one begins, effectively blocking the flow of execution until the assignment is done.

Syntax: =

Execution: Executes sequentially, one after the other.

Used in: Combinational logic (like in always (*))

Keyword: "Blocking" because it blocks the execution of the next statement until the current one finishes.


2. Non-blocking Assignments (<=)

A non-blocking assignment schedules the assignment to occur at the end of the current simulation time step, allowing other statements to execute without waiting. It does not block the next statement from executing.

Syntax: <=

Execution: Executes concurrently - all scheduled updates happen at the end of the time step.

Used in: Sequential logic (like in always (posedge clk))

Keyword: "Non-blocking" because it does not block the next statement.

