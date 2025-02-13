---
title: What is a compiler?
---

# What is a compiler?
{: .no_toc }

---

## Table of Contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

A compiler is a program that takes in source code written in one
language (called the *source language*) and returns source code written
in another language (called the *target language*). Here's how we might
write this in quasi-mathematical notation:

``` ocaml
compiler : source_program -> target_program
```

That `:` is read “has type”. The arrow represents a function type; in
this case, a function from programs written in the source language to
programs written in the target language.

What are `source_program` and `target_program`? They must be types
representing code in each programming language. For many or most
programming language, that type is ultimately `string`; programmers
write programs as sequences of characters. So we could write something
like

``` ocaml
compiler : string -> string
```

For this class, though, we'll use the previous definition. In some
languages–for instance, block-based programming languages like
Scratch–programmers usually *don't* write source code as strings. Also,
the first definition is a bit more specific about what these strings
should look like.

So, now that we have our definition: what are some compilers you've
worked with? What are their types?

| `compiler` | `:` | `source_program` | `->` | `target_program` |
|------------|-----|------------------|------|------------------|
| `javac`    |     | Java             |      | Java bytecode    |
| `gcc`      |     | C                |      | Machine code     |
| …          |     |                  |      |                  |

### How is a compiler different from an interpreter?

In addition to compilers, you might have used *interpreters* before.
Interpreters are closely related to compilers; indeed, in this course
you'll develop a number of interpreters as well as a number of
compilers. What's the type of an interpreter?

Like a compiler, an interpreter takes in program code. What does it
produce?

Here's one possible type:

``` ocaml
interpreter : source_program -> value
```

Rather than producing more code in some target language, as a compiler
does, an interpreter *interprets* its input code and produces some
value.

Something to think about here: does it make any sense to have a compiler
if you don't have any interpreters? How would you actually get a value
out of any of those programs you're making? This is why one very
important interpreter for our purposes is the computer's CPU! Depending
on your computer, this is probably an interpreter for x86-64 *machine
code*. Machine code is the “native” language of the computer. It's often
targeted by compilers, including the compilers we'll develop in this
course.

### This class

In this class we will be developing, testing, and discussing
compilers–in fact, we'll write our first compiler in just a little
while. Why does this class exist? Why should you take it?

One reason is that compilers are interesting! One of the big appeals of
computer science is that it blends elegant theory with practical
utility, and I think this topic is a great example of that. On the
theory side, we'll learn about formal notions of compiler correctness
and algorithms for things like register allocation; on the practice
side, we'll get our hands dirty writing real compilers for real systems.

On a related note, compilers are complex software systems. Like an
operating systems class, a compilers class is an opportunity to deploy
good software engineering and testing practices on decently large
programs. We'll talk a lot in this course about testing in particular!

Also, developing compilers in this course can improve your interactions
with compilers in your regular life. I can't promise that after taking
this course you'll immediately understand every bizarre C++ error you
get, but you'll at least have a better understanding of where those
errors are coming from. As long as you keep programming, you'll keep
interacting with compilers and interpreters, so this should be a gift
that keeps on giving!

Finally, some of those same skills that will help you understand your
programming tools will also help you pick up new languages. Again, no
guarantees here, but understanding more about how languages are
implemented, how they vary, how to debug that wacky thing your compiler
is doing–these skills can all help you pick up new programming languages
more quickly and easily.

### Logistics

A few logistics points for now:

- The course website has most of the details you need about course
  structure!

- One (short!) assignments and another (even shorter!) assignment
  are due next week:

  - The first homework assignment, HW0. Homeworks will be due weekly
    or biweekly. HW0 is a very short programming assignment in the
    OCaml programming language. We're not expecting you to have
    written any OCaml before this course; the point of this homework
    is just to make sure everyone has the development environment
    set up and has started to learn the language. We'll talk more
    about OCaml very soon.
  - The first drill. There will be drills due every week, except
    this first week. These are short quizzes, graded on completion;
    the idea is to get an idea of how comfortable everyone is
    feeling with the week's class material, so we can spend more
    time on the topics you need most. This first drill asks you to
    look over the course syllabus, including the course
    collaboration and professionalism policies.

- Most of your grade for the course will be based on the homeworks.
  You'll also get some points for completing the drills. The other
  component of your grade will be exams; you'll have two of these,
  one midterm and one final.

### Our first compiler

OK: let's write a compiler! Eventually, we'll write a compiler for a
programming language with the following features:

- Arithmetic
- Conditionals (ifs)
- Variables
- Lists
- First-class functions
- …and more!

We'll tackle these and other features one at a time, slowly growing the
language our compiler supports. We'll talk more about what this language
will look like next time. For now, let's try to write a compiler for a
very small subset of this language: the integers!

Here are some examples of programs written in this language:

``` ocaml
42
10
-4
4000000000000
```

What should these programs do? Well, let's see what they do in Python:

``` python
$ python
>>> 42
42
>>> 10
10
```

It looks like these programs should sort of just return themselves.

Our compiler is going to target x86-64 machine code. That way, we won't
need any other programs in order to interpret the programs we produce.
What should a program to print out a number look like?

### Printing a number, the hard way

We can find out by writing such a program in C:

<!-- `program.c` -->

``` c
// program.c
#include <stdio.h>
#include <inttypes.h>

int64_t entry() {
  return 4000000000000;
}


int main(int argc, char **argv) {
  printf("%" PRIi64, entry());
  return 0;
}
```

This program is a bit more complex than it needs to be for now.
We're separating out the `entry` and `main` functions because doing
so will be useful later.

If you haven't seen C before, that's OK–all this program is doing is
printing a string to the screen and then exiting. The reason we've
written it in C is that we already have a compiler from C to machine
code, `gcc`. So, let's make sure our program works:

``` bash
$ gcc -o program program.c
$ ./program
4000000000000$
```

OK, it seems to do the right thing (it's just printing the number,
not a newline). Let's try to take a look at the code it produced!

``` bash
$ cat program # the [cat] command prints out the contents of a file
```

This command results in a lot of unreadable garbage. That's not very
helpful! What's going on here? Some of that stuff is actually x86-64
machine code, in binary format. Other parts are sort of boilerplate
that tells the operating system how to execute this program. We can
get a more useful output like this:

``` bash
$ gcc -S -masm=intel -m64 program.c
$ cat program.s
```

``` asm
        .section        __TEXT,__text,regular,pure_instructions
        .build_version macos, 10, 14    sdk_version 10, 14
        .intel_syntax noprefix
        .globl  _entry                  ## -- Begin function entry
        .p2align        4, 0x90
_entry:                                 ## @entry
        .cfi_startproc
## %bb.0:
        push    rbp
        .cfi_def_cfa_offset 16
        .cfi_offset rbp, -16
        mov     rbp, rsp
        .cfi_def_cfa_register rbp
        movabs  rax, 4000000000000
        pop     rbp
        ret
        .cfi_endproc
                                        ## -- End function
        .globl  _main                   ## -- Begin function main
        .p2align        4, 0x90
_main:                                  ## @main
        .cfi_startproc
## %bb.0:
        push    rbp
        .cfi_def_cfa_offset 16
        .cfi_offset rbp, -16
        mov     rbp, rsp
        .cfi_def_cfa_register rbp
        sub     rsp, 32
        mov     dword ptr [rbp - 4], 0
        mov     dword ptr [rbp - 8], edi
        mov     qword ptr [rbp - 16], rsi
        call    _entry
        lea     rdi, [rip + L_.str]
        mov     rsi, rax
        mov     al, 0
        call    _printf
        xor     ecx, ecx
        mov     dword ptr [rbp - 20], eax ## 4-byte Spill
        mov     eax, ecx
        add     rsp, 32
        pop     rbp
        ret
        .cfi_endproc
                                        ## -- End function
        .section        __TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
        .asciz  "%lli"


.subsections_via_symbols
```

This is called *assembly language*. It's basically a human-readable
form of machine-code. Translating between assembly language and
machine code is a simple mechanical process; we call this
*assembling*.

Let's look at the code above. There are two big sections, starting
with `_entry` and `_main`[^1]. These correspond to the two
functions, `entry` and `main`, in our C code.

In order to write our compiler, we're going to replace the `entry`
function (we've called it that because it's the *entry point* to the
code our compiler is producing). We're going to replace it with code
that looks a lot like the code up there, but simpler. We're going to
split that code out into its own file, and that's what our compiler
will produce.

First, we'll modify our C program:

<!-- runtime.c -->

``` c
// runtime.c
#include <stdio.h>
#include <inttypes.h>

extern int64_t entry();

int main(int argc, char **argv) {
  printf("%" PRIi64, entry());
  return 0;
}
```

This program is called the *runtime* for our compiler. The runtime
will be included in every program our compiler produces. Here, it
just handles calling our function and printing the result. Later
we'll extend it to do more things.

Note that we're writing the runtime in C, but we don't have to–we
could write it in assembly, or some other language that can produce
machine code. C is a convenient language for this purpose, but it's
certainly not the only choice! Because we've written the runtime in
C, C's runtime gets included in our programs as well.

We can compile the runtime like this:

``` shell
$ gcc -c runtime.c -o runtime.o
```

That `-c` is just telling GCC not to try to compile it into a whole
program, but instead to make a chunk of machine code that we can
then include in other programs.

Back to our `entry` function. We can write it in assembly language
like this:

<!-- program.s -->

``` asm
; program.s
global _entry
_entry:
        mov rax, 4000000000000
        ret        
```

Line by line, this program:

1.  Declares that it's going to define one function, called `_entry`
2.  Starts the `_entry` function
3.  Writes the value 4000000000000 into the `rax` *register*. We'll
    talk more about registers later; for now, the important thing is
    that by convention in x86-64, the return value of a function
    goes in `rax`.
4.  Returns from the function.

We can build this program like this:

``` shell
$ nasm program.s -f macho64 -o program.o # change "-f macho64" to "-f elf64" if you're on Linux
```

Finally, we can combine the runtime and the program:

``` shell
$ gcc program.o runtime.o -o program
$ ./program
4000000000000$ 
```

I know, I know, here we are running another compiler after we just
made our own! We wrote that runtime, and we wrote our assembly. Why
do we need GCC again? All that's happening here is it's running
something called a linker, telling these components how to talk to
each other. If you want to see that it's really just running the
linker, go ahead and run:

``` shell
$ gcc program.o runtime.o -o program --verbose
```

### The compiler

OK, so now we know what our compiler needs to do. It needs to turn a
“program” like

``` ocaml
4000000000000
```

into an assembly-language program like

``` asm
global _entry
_entry:
        mov rax, 4000000000000
        ret        
```

Let's write a program to do this! We'll write our program in OCaml
(a programming language we'll discuss in much more detail next
time). Here's what it might look like:

<!-- compile.ml -->

``` ocaml
(* compile.ml *)
let compile (program: string): string =
  String.concat "\n" 
  [ "global _entry"; 
  "_entry:"; 
  Printf.sprintf "\tmov rax, %s" program;
  "\tret" ]
```

This program just makes a list of our assembly-language lines and
then glues them together with newlines.

We can see our compiler work if we open up an OCaml interaction
environment:

``` shell
$ utop
```

And in `utop`:

``` ocaml
>>> #use "compile.ml";;
>>> print_endline (compile "4000000000000");;
global _entry
_entry:
        mov rax, 4000000000000
        ret        
```

We can glue everything together like this:

<!-- `compile.ml` -->

``` ocaml
(* compile.ml *)
let compile (program: string) : string =
  String.concat "\n" 
  ["global _entry";
  "_entry:";
  Printf.sprintf "\tmov rax, %s" program;
  "\tret"]

let compile_to_file (program: string): unit =
  let file = open_out "program.s" in
  output_string file (compile program);
  close_out file

let compile_and_run (program: string): string =
  compile_to_file program;
  ignore (Unix.system "nasm program.s -f macho64 -o program.o");
  ignore (Unix.system "gcc program.o runtime.o -o program");
  let inp = Unix.open_process_in "./program" in
  let r = input_line inp in
  close_in inp; r
```

Now in our utop we can run:

``` ocaml
>>> #use "compile.ml";;
>>> utop # compile_to_file "42";;
- : unit = ()      
```

And if we look back inside `program.s`, we'll see 42.

And in utop we can run:

``` ocaml
>>> utop # compile_and_run "7";;
- : string = "7"   
```

We see it produces 7. And we can pop out of utop and run:

``` shell
$ ./program
7$ 
```

And again we see whatever number we provided as our input progam
when we called `compile_and_run`.

So–that's our first compiler. Next time, we'll talk more about the
language we're trying to compile. We'll also do a quick introduction
to OCaml.
