# dotPear
## Project Group Member
* Elif Işık
* Muhammed Fatih Özdil
* Yusuf Ramazan Tanrıkulu

# Syntax
## BNF
```
<program> ::= <statement> | <program> <statement>

<statement> ::= <variable_declaration> | <assignment_statement> | <function_declaration> 
                 | <if_statement> | <loop_statement> | <io_statement> | <comment>

<variable_declaration> ::= <type> <identifier>

<type> ::= "int" | "float" | "char" | "string" | "bool"

<identifier> ::= <letter> | <identifier> <letter> | <identifier> <digit>

<letter> ::= "A" | "B" | ... | "Z" | "a" | "b" | ... | "z"

<digit> ::= "0" | "1" | ... | "9"

<assignment_statement> ::= <identifier> "=" <expression>

<expression> ::= <term> | <expression> "+" <term> | <expression> "-" <term>

<term> ::= <factor> | <term> "*" <factor> | <term> "/" <factor>

<factor> ::= <number> | <identifier> | "(" <expression> ")" 

<number> ::= <integer> | <floating_point>

<integer> ::= <digit> | <integer> <digit>

<floating_point> ::= <integer> "." <integer>

<function_declaration> ::= "function" <identifier> "(" <parameters> ")" <statement>

<parameters> ::= <type> <identifier> | <parameters> "," <type> <identifier>

<if_statement> ::= "if" "(" <condition> ")" <statement> | "if" "(" <condition> ")" <statement> "else" <statement>

<condition> ::= <expression> <comparison_operator> <expression>

<comparison_operator> ::= "==" | "!=" | ">" | "<" | ">=" | "<="

<loop_statement> ::= "while" "(" <condition> ")" <statement>

<io_statement> ::= "print" <expression> | "scan" <identifier>

<comment> ::= "//" <text>

<text> ::= <letter> | <text> <letter>
```
## Explanations about the language

- Pear is a programming language that supports basic variable declarations and assignments, arithmetic and logical 
expressions,conditional statements, loops, functions, and input/output statements.

- You can run your program by running the makefile and giving example program as input:
```
make
./pear < example.pear
```
- ## Design Decisions:
When designing Pear, we made the following decisions:
- The language is statically typed, meaning that variable types must be declared before they are used.
- Variables can only be assigned values of the same type. For example, an integer variable cannot be assigned a string value.
- We chose to use curly braces to delimit blocks of code, as they are easy to read and commonly used in other programming languages.
- We chose to use `print` and `scan` statements for input/output, as they are easy to understand and commonly used in other programming languages.
- We chose to use the `if` statement for conditional branching and the `while` statement for loops, as they are simple and widely used constructs.
- We chose to use `&&`, `||`, and `!` for logical operators, as they are commonly used in other programming languages and are intuitive.
- We chose to use the BNF grammar notation to specify the syntax of the language, as it is a standard notation used in language design.

- ## Variable Declarations and Assignments:
- Variables in Pear are declared using the following syntax:
```
<type> <identifier> "=" <literal> ";"
```
- Here, `<type> `,is one of the supported types (int, float, char, string, or bool), `<identifier>` is a name for the variable
(must start with a letter and can contain letters, digits, and underscores), `<literal>` is a value of the specified type,
and ";" is the statement terminator.

  * integer
  ``` 
  int x = 5;
  ```
  * float
  ```
  float pi = 3.14;
  ```
  * char
  ```
  char letter = 'A';
  ```
  * string
  ```
  string greeting = "Hello, world!";
  ```
  * boolean
  ```
  bool is_true = true;
  ```
  
 - To assign a value to an existing variable, use the following syntax:
 ```
<identifier> "=" <expression> ";"
```
- Here, `<identifier>` is the name of the variable, `<expression>` is an arithmetic or logical expression that evaluates to the same type as the variable, and ";" is the statement terminator.
- For example, to assign a new value to the variable x, you can write:
```
x = 10;
```
- ## Language Keywords:
  * > if 
  * > else 
  * > while  
- ## Predefined Functions:
  * > print 
  * > scan
- ## Operators:
  * > **==**&nbsp; &nbsp; <---->&nbsp; &nbsp; `is equal`  
  * > **!=**&nbsp; &nbsp; <---->&nbsp; &nbsp; `not equals`
  * > **>**&nbsp; &nbsp; <---->&nbsp; &nbsp; `greater than`
  * > **<**&nbsp; &nbsp;<---->&nbsp; &nbsp; `less than`
  * > **>=**&nbsp; &nbsp;<---->&nbsp; &nbsp; `greater than or equals`
  * > **<=**&nbsp; &nbsp;<---->&nbsp; &nbsp; `less than or equals`
- ## Other features:
  * Pear allows you to add comments to your code using the **//** syntax.Any text that follows `//` on a line is ignored by the compiler.
- Example: 
  ```
  // This is a comment
  int x = 5; // This is also a comment
  ```
  * Pear supports conditional statements in the form of if statements.The basic syntax is:
  ```
  if (<expression>) <statement> [else <statement>]
  ```
  Here, `<expression>` is a logical expression that determines whether to execute the following `<statement>`. If `<expression>` evaluates to `true`, the first `<statement>` is executed. If `<expression>` evaluates to `false` and an `else` clause is present, the second `<statement>` is executed instead.

- Example: 
  ```
  if (x > 0) {
    print("x is positive");
   } else {
    print("x is non-positive");
      }
  ```
  * Pear supports while loops,which execute a block of statements repeatedly as long as a specified condition is true.The basic syntax is:
  ```
  while (<expression>) <statement>
  ```
  Here, `<expression>` is a logical expression that determines whether to continue the loop. If `<expression>` evaluates to `true`, the `<statement>` is executed and the loop continues. If `<expression>` evaluates to `false`, the loop exits and control passes to the next statement
 
- Example: 
  ```
    while (x < 10) {
    x = x + 1;
    print(x);
       }
  ```
  * Pear allows you to define and call functions. 
  
- Example: 
  ```
  int add(int a, int b) {
    return a + b;
    }
  ```
  * Pear supports two basic input/output statements: `print` and `scan`.
- Example: 
  ```
  print("Hello, world!");
  
  int x;
  scan(x);
  ```
### Conclusion
Pear is a simple programming language designed to be easy to learn and use. It supports common programming constructs such as variables, functions, conditional statements, loops, and input/output operations. Its syntax is similar to that of other popular programming languages, making it easy for beginners to pick up.





