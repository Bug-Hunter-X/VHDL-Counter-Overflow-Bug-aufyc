# VHDL Counter Overflow Bug
This repository demonstrates a common error in VHDL code: integer overflow in a counter. The `counter.vhdl` file contains a simple counter that increments on each rising clock edge. However, it uses a fixed range for the `INTEGER` type, leading to an overflow once the counter reaches its maximum value. The `counter_fixed.vhdl` shows a corrected version using UNSIGNED type and a modulo operation to prevent overflows. 

## Bug Description
The original counter uses an `INTEGER` type, which can cause unexpected behavior when it overflows. This can lead to simulation errors, incorrect output, or even synthesis issues, particularly when targeting hardware with limited bit width.

## Solution
The solution uses `UNSIGNED` type, which is designed for representing unsigned numbers without the risk of integer overflow, to resolve this issue. A modulo operation is used to handle overflow gracefully, ensuring the counter wraps around to 0 after reaching its maximum value.