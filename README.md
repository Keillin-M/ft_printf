# ft_printf
A project from the 42 curriculum to reimplement the C standard library function printf, supporting basic formatted output.

## 📚 Project Description
`ft_printf` is a custom implementation of the printf function in C that prints formatted output to the standard output. It supports a set of core conversion specifiers to display characters, strings, pointers, and integers.

This project deepened my understanding of variadic functions, format parsing, and output handling in C.

## ✅ Function Prototype
```bash
int ft_printf(const char *format, ...);
```
## ⚙️ Features
Supports conversion specifiers:
- %c (character), %s (string), %p (pointer), %d and %i (signed integers), %u (unsigned integers), %x and %X (hexadecimal), and %% (percent sign).
- Handles basic output formatting without flags, width, or precision.
- Returns the total number of characters printed (like the standard printf).

## 📁 Files
| **File**        | **Description**                                     |
| --------------- | --------------------------------------------------- |
| `ft_printf.c`   | Main printf function and format parser              |
| `ft_utils.c`    | Utility functions like number to string conversions |
| `ft_handlers.c` | Handler functions for each specifier                |
| `ft_printf.h`   | Header file with prototypes and includes            |

## 🔧 Usage
### Compile
Compile your program linking with your ft_printf.c and helper files:
```bash
gcc -Wall -Wextra -Werror ft_printf.c ft_utils.c ft_handlers.c main.c -o my_printf
```
### Example
```bash
#include "ft_printf.h"

int main(void)
{
    int count = ft_printf("Hello %s! Number: %d\n", "world", 42);
    ft_printf("Printed %d characters\n", count);
    return 0;
}
```
## 🧠 Concepts Learned
- Variadic functions using stdarg.
- Parsing format strings and identifying specifiers
- Handling multiple data types and conversions
- Writing modular and reusable C code

## 📌 Notes
- Tested to handle NULL strings, zero values, and basic edge cases.
- Focused on core specifiers only, no support for flags, width, or precision yet.
- Memory safe with no leaks or undefined behaviors.
