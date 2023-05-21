# Show interactive shell
`iex`

## do 'hello world' in shell
`IO.puts("Hello World!")`

# exit, run from command line
elixir "hello.exs"

## show helper functions (parens assumed, talk about arity)
`h`

## pass an arg to helper functions
`h("bloop")`

## clear
`clear`

## Data types
# integer
`5`

# float
`1.55`

# boolean
`true / false`

# atom / symbol
`:atom`

# string
`"foo"`

# list
`[1, 2, true, 4]`
(like a linked list, always returns a new copy and never the same "changed in place")

# tuple
`tuple = { 1, 2, true }`

similar to what you might think of as an array, you can refer to elements by index:
`elem(tuple, 1)`

# find out what something is?

Whenever you see a value in IEx and you are not quite sure what it is, you can use the i/1 to retrieve information about it:

`i "foo"`

### math
## addition
`5 + 5`

## subtraction
`5 - 1`

## multiplication
`4 * 8`

## division
`10 / 5`

## also div/1 and rem/1
`rem(10, 3)`

## Pattern-matching
### match operator -- =
`a = 1`
`1 = a`

this will produce an error, though:
`2 = a`

because these two things are not the same. Elixir will only change the value of a vriable on the left side of an equals sign. On the right, a variable is replaced with its value.

A more complicated set of matches:
```
list = [1, 2, 3]
[a, b, c] = list
```

`a, b, c` (show each)

Elixir looks for a way to make the value on the left side the same as on the right. The left side is a list with three variables, and the right is a list of three values, so the two sides of the match operator can be made the same by setting the variables to the corresponding values. This process is called pattern matching.

```
list = [1, 2, [3, 4, 5]]
[a, b, c] = list
```

What do we expect the value of a to be? b? c?

`a, b, c` (show each)

```
list = [1, 2, 3]
[a, 2, b] = list
```

What do we expect the value of a to be? b?

a, b (show each)

The literal 2 in the pattern matched the corresponding term on the right, so the match succeeds by setting the values of a and b to 1 and 3.

Once again, though, if there's not a match, we'll get an error:
``
list = [1, 2, 3]
[a, 1, b] = list
``
You can think about this as a way to match a on only a list with three element and `2` as its second element.

Which will match?
```
a = [1, 2, 3]
a = 4
4 = a
[a, b] = [1, 2, 3]
a = [[1, 2, 3]]
[a] = [[1, 2, 3]]
[[a]] = [[1, 2, 3]]
```

# Now let's look at using pattern matching in a function.

when you call a named function, Elixir tries to match your arugments with the parameter list of the first definition. if it can't, it moves on to the next definition of the same function. (we can also leverage this to match, say, functions with different numbers of arguments, called "arity")

`c "factorial.exs"`

```
Factorial.of(3)
Factorial.of(7)
Factorial.of(100)
```
# quit

`Ctrl + C` x 2

