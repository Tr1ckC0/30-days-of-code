# Ruby FAQs

[https://www.rubyguides.com/wp-content/uploads/2019/11/ruby-reference-2019-optin.pdf](Cheatsheet)

#### 1. Do I need to put `var` or `let` in Ruby? 
No.
#### 2. Can I `puts` multiple lines? 
NO.
#### 3. WHY aren't my hashes working the way I expect them to?

Most likely you are doing something like this.
```
hash = {
    "red": 2,
    "blue": 5,
    "grey": 9
}
```
But you've commited one of the classic blunders, never forget that RUBY fucking hates you and wants you to be confused.
The above notation dictates that the values will be symbols NOT strings. You dumb dumb dummy.

This is the correct way to note strings as values in a ruby hash is with a HASH ROCKET.
```
hash = {
    "red" => 2,
    "blue" => 5,
    "grey" => 9
}
```

#### 4. What is `true` / `false` in Ruby?

```
0 => true

"" => true

false => false

nil => false
```

Tip: use `!!` to check the bool value of any object

#### 5. What is the convention for variables in Ruby?

Ruby variable names must begin with a lowercase letter or underscore, and may contain only letters, numbers, and underscore characters.

#### 6. How do I index in Ruby?

```
a = [1, 5, 6, 3, 8, 9]
```

Index using comma

```
a[1, 4] => [5, 6, 3, 8]
```
The first index is the start and the second is the desired length of the array.

Index using `..` or `...`
```
a[1..5] => [5, 6, 3, 8, 9]

a[1...5] => [5, 6, 3, 8]
```

Tip: you can also use negative indexes in Ruby

```
a[-1] => 9
a[-3] => 3

a[-5, 4] => [5, 6, 3, 8]

a[-4..-1] => [6, 3, 8, 9]

a[-3..0] => [] # Be careful. remember you're still going through the array left to right so the first index can't be to the right of the second
```




