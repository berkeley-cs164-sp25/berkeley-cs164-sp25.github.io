---
title: x86-64 Assembly Language Reference
layout: default
---

<style>
    main table {
        width: calc(100vw - 40px);
        margin-left: calc(-50vw + 50% + 20px);
    }
</style>

## x86-64 assembly language reference

x86-64 machine code is the native language of the processors in most
desktop and laptop computers. x86-64 assembly language is a
human-readable version of this machine code.

x86-64 has hundreds of instructions, and compiling programs to the most
efficient machine code requires a good understanding of all of
them–indeed, the fastest C compiler for x86-64 processors is developed
by Intel! However, we'll be able to develop a perfectly functional
compiler using only a small subset of x86-64 instructions.

This is a guide to that subset of x86-64, and to the OCaml library we
have provided to produce x86-64 instructions.

### x86-64 assembly language

The assembly programs produced by our compiler have the following form:

```asm
;; frontmatter: global, etc.
entry:
        ;; instructions
label1:
        ;; more instructions
label2:
        ;; more instructions
```

At the top of the file are some special directives to the assembler,
telling it which labels should be visible from outside the file (for
now, just the special `entry` label). After that, each line is either a
*label*, which indicates a position in the program that other lines can
reference, or an *instruction*, which actually tells the processor what
to do.

In this class, your compiler won't emit assembly code directly. Instead,
you'll use an OCaml library that handles some differences between
operating systems and idiosyncrasies of x86-64. The rest of this
document focuses on the library.

### Directives

The main interface to our OCaml library is the `directive` type. A
`directive` corresponds to a single line of assembly code; we will
produce a `.s` file from a list of these directives. Directives,
therefore, correspond directly to frontmatter declarations, labels, and
instructions.

### Operands

Many directives take one or more arguments. For most instructions, these
arguments are instances of the `operand` type. An operand can be any one
of:

- A register, written `Reg <register>` (for instance, `Reg Rax` or `Reg
   R8`).
- An “immediate” numerical constant value, written `Imm <num>`.
- An offset into memory defined by an additional two operands. For
  instance, `MemOffset(Reg Rsp, Reg Rax)` refers to the memory location
  at `rsp + rax`.

Some directives–jumps, for instance–take a `string` naming a label
instead of an `operand`.

### Directive reference

Don't worry about learning all of these instructions at once. It's ok to
learn them as you need them for HWs and class sessions! Notes on some
instructions are below, as indicated in the Notes column.

| Directive                        | Example asm           | Description                                                                                              | Notes                                     |
|----------------------------------|-----------------------|----------------------------------------------------------------------------------------------------------|-------------------------------------------|
| `Global of string`               | `global entry`        | Tells the assembler to export a label                                                                    |                                           |
| `Section of string`              | `section .text`       | Writes to a segment in the generated binary                                                              |                                           |
| `Label of string`                | `label:`              | Labels a program location                                                                                |                                           |
| `DqLabel of string`              | `dq label1`           | Writes the address of a particular label                                                                 | [*DqLabel*](#dq-label)                    |
| `LeaLabel of (operand * string)` | `lea rax, [label1]`   | Loads a label's address into a register                                                                  | [*LeaLabel*](#lea-label)                  |
| `Mov of (operand * operand)`     | `mov rax, [rsp + -8]` | Moves data between locations                                                                             |                                           |
| `Add of (operand * operand)`     | `add r8, rsp`         | Adds its arguments, storing the result in the first one                                                  |                                           |
| `Sub of (operand * operand)`     | `sub rax, 4`          | Subtracts its second argument from its first, storing the result in its first                            |                                           |
| `Div of operand`                 | `idiv r8`             | Divides the signed 128-bit integer `rdx:rax` by its argument, storing the result in `rax`                | [*Div and Mul*](#div-mul)                 |
| `Mul of operand`                 | `imul [rsp + -8]`     | Multiplies `rax` by its argument, storing the result in `rdx:rax`                                        | [*Div and Mul*](#div-mul)                 |
| `Cqo`                            | `cqo`                 | Sign-extends `rax` into `rdx`                                                                            |                                           |
| `Shl of (operand * operand)`     | `shl rax,2`           | Shifts its first argument left by its second argument                                                    |                                           |
| `Shr of (operand * operand)`     | `shr rax,3`           | Shifts its first argument right by its second argument, padding with zeroes on the left                  |                                           |
| `Sar of (operand * operand)`     | `sar rax,3`           | Shifts its first argument right by its second argument, padding with zeroes or ones to maintain the sign | [*Sar*](#sar)                             |
| `Cmp of (operand * operand)`     | `cmp r8, [rsp + -16]` | Compares its two arguments, setting RFLAGS                                                               |                                           |
| `And of (operand * operand)`     | `and rax, r8`         | Does a bitwise AND of its arguments, storing the result in its first argument                            |                                           |
| `Or of (operand * operand)`      | `or r8, 15`           | Does a bitwise OR of its arguments, storing the result in its first argument                             |                                           |
| `Setz of operand`                | `setz al`             | Sets its one-byte argument to the current value of `ZF`                                                  | [*Setz*](#setz)                           |
| `Setl of operand`                | `setl al`             | Sets its one-byte argument to the current value of `(SF != OF)`                                          | [*Setl*](#setl)                           |
| `Jmp of string`                  | `jmp label1`          | Jumps execution to the given label                                                                       |                                           |
| `Je of string`                   | `je label1`           | Jumps execution to the given label if `ZF` is set                                                        | [*Conditional Jumps*](#conditional-jumps) |
| `Jne of string`                  | `jne label1`          | Jumps execution to the given label if `ZF` is not set                                                    | [*Conditional Jumps*](#conditional-jumps) |
| `Jl of string`                   | `jl label1`           | Jumps execution to the given label if `SF != OF`                                                         | [*Conditional Jumps*](#conditional-jumps) |
| `Jnl of string`                  | `jnl label1`          | Jumps execution to the given label if `SF == OF`                                                         | [*Conditional Jumps*](#conditional-jumps) |
| `Jg of string`                   | `jg label1`           | Jumps execution to the given label if `SF == OF AND !ZF`                                                 | [*Conditional Jumps*](#conditional-jumps) |
| `Jng of string`                  | `jng label1`          | Jumps execution to the given label if `SF != OF OR ZF`                                                   | [*Conditional Jumps*](#conditional-jumps) |
| `ComputedJmp of operand`         | `jmp rax`             | Jumps to the location in the given operand                                                               |                                           |
| `Ret`                            | `ret`                 | Returns control to the calling function                                                                  |                                           |
| `Comment of string`              | `;; helpful comment`  | A comment                                                                                                |                                           |

1.  DqLabel <a id="dq-label"></a>

    `DqLabel "label1"` writes the address of the given label into the
    program as **data** (`dq` is short for “data, quad-word”). You can
    then load this address with a `mov` instruction. You should make
    sure that your program's execution never gets to this directive–it's
    just data, not an instruction!

2.  LeaLabel <a id="lea-label"></a>

    `LeaLabel (Reg Rax, "label1")` loads the address of the given label
    into a register. You'll use this when doing a computed jump, or when
    trying to load data from a given label (e.g., in combination with
    `DqLabel`).

3.  Div and Mul <a id="div-mul"></a>

    `Div` and `Mul` work differently from `Add` and `Sub`. Because
    multiplying two 64-bit numbers will frequently overflow, the result
    of `imul` is stored in `rdx:rax` as a *128-bit* number. Our compiler
    doesn't handle overflow, so you don't need to worry about this for
    multiplication; however, `idiv` does the inverse operation, dividing
    `rdx:rax` by its argument. If you just want to divide `rax`, you'll
    need to *sign-extend* `rax` into `rdx` with the `cqo` instruction.
    This sets `rdx` to all 0s if `rax` is positive or zero and all 1s if
    `rax` is negative.

    Finally, neither `Div` nor `Mul` can take an immediate value as
    their argument–it needs to be either a register or a memory offset.

4.  Sar <a id="sar"></a>

    `Sar` does an *arithmetic* right-shift, which maintains the sign of
    its argument while shifting it to right.

5.  Setz <a id="setz"></a>

    `Setz(Reg Rax)` sets the last byte of `rax` to `0b00000001` if `ZF`
    is set and to `0b00000000` otherwise. In assembly it actually looks
    like `setz al`, because `al` is the name for the last byte of `rax`.
    The OCaml assembly library takes care of this for you.

6.  Setl <a id="setl"></a>

    `setl` is short for “set if less.” Just as `Setz` sets its argument
    to 1 if the last `cmp` instruction compared equal arguments, `setl`
    sets its argument to 1 if, in the last `cmp` instruction, the first
    operand was less than the second. So

    ``` asm
    cmp r8, 40
    setl al
    ```

    will set the last byte of `rax` to 1 if `r8` is less than `40`.

    This works because `cmp arg1, arg2` sets several flags:

    - `ZF` if `arg1 - arg2 = 0`
    - `SF` if `arg1 - arg2 < 0`
    - `OF` if `arg1 - arg2` overflows

    `setl` jumps if `SF != OF`, which means that the signed value `arg1`
    is less than the signed value `arg2`.

    Most of the time, you won't need to worry about the specific flags.
    Just do a `cmp` instruction and use the `set` (or `j`, see below)
    instruction with the right mnemonic.

7.  Conditional jumps <a id="conditional-jumps"></a>

    `je` and friends jump to the specified label if their condition is
    true. The mnemonics work as explained above. For instance:

    ``` asm
    cmp r8, 40
    jng label1
    ```

    will jump to label 1 if the value in r8 was Not Greater than 40.
