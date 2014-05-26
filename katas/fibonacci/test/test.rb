require '../../../test-framework'
require '../src/enumerator'

Test.assert_equals(@fib.take_while { |x| x < 10 }, [1, 1, 2, 3, 5, 8])