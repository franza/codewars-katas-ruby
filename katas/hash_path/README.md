Write a simple method for the Hash-class that can get the configuration-value from a JSON-interpreted hash. Its signature is:

```ruby
Hash.get_value( default, key1, ... )
```

key1, ... refer to the hash-keys of the JSON-interpreted hash, which is a hash of hash values. If the path of keys is found, it should return the found value, else it should return the default value.

Here are some examples on how to use it:

```ruby
config = { :files => { :mode => 0x777 }, :name => "config" }

config.get_value( 0x0, :files, :mode ) == 0x777
config.get_value( "", :name ) == "config"
config.get_value( 80, :port ) == 80
config.get_value( "cfg", :files, :extension ) == "cfg"
```

See this kata on [codewars](http://www.codewars.com/kata/52191f3c35f5ecba960003f3/train/ruby)