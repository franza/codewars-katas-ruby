require '../../../test-framework'
require '../src/helper'

helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)

Test.expect helper.page_count == 2, 'page count should return amount of pages'
Test.expect helper.item_count == 6, 'item count should return size of original collection'
Test.expect helper.page_item_count(0) == 4, 'first page'
Test.expect helper.page_item_count(1) == 2, 'last page'
Test.expect helper.page_item_count(2) == -1, 'wrong page'

Test.expect helper.page_index(5) == 1, 'zero based index'
Test.expect helper.page_index(2) == 0, 'should return first page'
Test.expect helper.page_index(20) == -1, 'wrong item index'
Test.expect helper.page_index(-10) == -1, 'negative item index'