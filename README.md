# 4-Bit Comparator in Verilog

## Overview

This project implements a **4-bit comparator** using Verilog. The design compares two 4-bit binary numbers (`A` and `B`) and outputs signals to indicate whether:
- `A` is greater than `B` (`A_gt_B`).
- `A` is equal to `B` (`A_eq_B`).
- `A` is less than `B` (`A_lt_B`).

The 4-bit comparator is built using four instances of a basic 1-bit comparator module, combined with additional logic to prioritize the most significant bits.

## Features

- **Hierarchical Design**: Uses a modular approach with multiple 1-bit comparators.
- **Comparison Outputs**: Provides three outputs (`A_gt_B`, `A_eq_B`, `A_lt_B`) indicating the result of the comparison.
- **Bitwise Comparison**: Compares each bit from the most significant bit (MSB) to the least significant bit (LSB).

## Inputs and Outputs

### Inputs
- `A`: 4-bit input to be compared.
- `B`: 4-bit input to be compared.

### Outputs
- `A_gt_B`: Output is `1` if `A` is greater than `B`, otherwise `0`.
- `A_eq_B`: Output is `1` if `A` is equal to `B`, otherwise `0`.
- `A_lt_B`: Output is `1` if `A` is less than `B`, otherwise `0`.

## Code Explanation

The project consists of two modules:
1. **1-Bit Comparator (`comparator_1bit`)**:
   - Compares two 1-bit values (`a` and `b`) and outputs signals indicating whether `a` is greater than, equal to, or less than `b`.

   ```verilog
   module comparator_1bit(a, b, ag_b, aeqb, al_b);
       input a, b;
       output ag_b, aeqb, al_b;
       
       // Comparison logic
       assign ag_b = (a > b);  // a is greater than b
       assign aeqb = (a == b); // a is equal to b
       assign al_b = (a < b);  // a is less than b
   endmodule
