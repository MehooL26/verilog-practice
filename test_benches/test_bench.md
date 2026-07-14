## Test Bench
- test benches are written in order to provide inputs and store outputs for a design such as half adder.
- It provides inputs a and b and stores outputs sum and carry.

  ### Test Bench for Combinational Circuits
  - Step-1 : declare variables for connecting inputs and outputs of the design.<br>
    Variables which are connected to the input should be declared as reg/net datatype.
  - Step-2 : instantiation of design in TB
  - Step-3 : initialization of inputs
  - Step-4 : driving inputs(assigning values) and storing outputs.
    
  ### Test Bench for Sequential Circuits
