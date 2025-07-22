# fundamentals-of-system-verilog
blocking and non-blocking 
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

