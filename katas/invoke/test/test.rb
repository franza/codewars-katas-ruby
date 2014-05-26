require '../../../test-framework'
require '../src/invoke'

# contrived class example used to provide a method that we could call
class ExampleItem
  # notice that this method always returns "updated"
  def update(arg1, arg2)
    @arg1 = arg1
    @arg2 = arg2
    "updated"
  end
end

items = [ExampleItem.new, nil, ExampleItem.new]

update_results = items.invoke(:update, "argument 1", "argument 2") { |item| item != nil }
# update_result would == ['updated', 'updated']
Test.assert_equals update_results, ['updated', 'updated']