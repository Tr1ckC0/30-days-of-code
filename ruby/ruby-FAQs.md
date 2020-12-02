# Ruby FAQs

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

#### 4. 
