require '../../../test-framework'
require '../src/str_to_hash'

Test.assert_equals({ :a => 1, :b => 2, :c => 3, :d => 4 }, str_to_hash('a=1, b=2, c=3, d=4'))