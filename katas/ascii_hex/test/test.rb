require '../../../test-framework'
require '../src/converter'

str = "Look mom, no hands"
hex = "4c6f6f6b206d6f6d2c206e6f2068616e6473"

Test.assert_equals(Converter.to_hex(str), hex)
Test.assert_equals(Converter.to_ascii(hex), str)