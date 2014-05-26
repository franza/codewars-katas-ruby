Please write a function that will take a string as input and return a hash. The string will be formatted as such. The key will always be a symbol and the value will always be an integer.

```ruby
"a=1, b=2, c=3, d=4"
```

This string should return a hash that looks like

```ruby
{ :a => 1, :b => 2, :c => 3, :d => 4}
```

See [Turn String Input into Hash](http://www.codewars.com/kata/52180ce6f626d55cf8000071/train/ruby)