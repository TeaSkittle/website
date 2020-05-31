## About

I have recently been fascinated with Terry A. Davis and his operating system TempleOS. If you do not know of Terry and his work I highly recommend this article by Vice: [God's Lonely Programmer](https://www.vice.com/en_us/article/wnj43x/gods-lonely-programmer). The programming language HolyC is the language of TempleOS and can be considered as being somewhat a combination of: C, C++ and Assembly. The code below is an overview of the basics of the language, I find it most interesting and fun to program in, and I hope you will too.

## Code

```C
/* HolyC Overview
  Date: 8-1-2019
  TeaSkittle
*/

F64 x, y; // Declare global variables

// Simple math/logic function
I64 Pwr(F64 a, F64 b)
{
  // Declare local variables
  I64 i;
  I64 c = 1;

  // Loop structre same as C
  for(i = 0; i < b; i++)
  {
    c *= a; // Has same sorthands as C
  }
  "%f ** %f = %d\n", a, b, c;

  return 0; // If function is void(U0, this is not needed
}

// Get user input
U0 Input()
{
  x=GetF64("Enter base number: ");
  y=GetF64("Enter exponent: ");

  // Simple If/Else control flow
  if (y != 0)
    Pwr(x, y);
  else
    "ERROR: Number can't be zero!\n";
    // Number can be zero, just returns 0
}

// Simple print, no need for printf
"Hello world!\n";

// Basic Array/Data structure
I64 Array[2][2] = {0, 1, 2, 3};
"%d\n", Array[0][2];

Input();
```

Credit to Terry A. Davis: https://templeos.org/
