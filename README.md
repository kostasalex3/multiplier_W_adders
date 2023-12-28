# VHDL Code: 4-bit Adder and Multiplier

This repository contains VHDL code for a 4-bit adder and a multiplier. These hardware modules are designed using VHDL and aim to perform arithmetic operations on 4-bit binary numbers.

## Contents

- **Adder (`adder_4a.vhdl`)**: Implements a 4-bit adder using VHDL. It provides a structural description for adding two 4-bit inputs along with a carry input, producing a 4-bit sum and a carry output.

- **Multiplier (`multiplier.vhdl`)**: Implements a 4x4 multiplier using VHDL. The code describes the structural architecture for performing multiplication between two 4-bit binary numbers and obtaining an 8-bit output.

## File Descriptions

### Adder (`adder_4a.vhdl`)

The `adder_4a.vhdl` file contains the VHDL code for a 4-bit adder with a data flow architecture. It has ports for two 4-bit inputs (`A` and `B`), a carry input (`Cin`), and outputs the sum (`S`) and carry output (`Cout`).

### Multiplier (`multiplier.vhdl`)

The `multiplier.vhdl` file contains VHDL code for a 4x4 multiplier using a structural architecture. It uses components like the 4-bit adder (`adder_4a`) and a custom AND gate (`my_and`) to perform multiplication operations between two 4-bit inputs (`A` and `B`), providing an 8-bit output (`C_OUT`).

## Usage

Feel free to explore and use the code as needed. The provided VHDL files can be used for simulation or synthesis purposes to implement 4-bit arithmetic operations in digital circuits.




