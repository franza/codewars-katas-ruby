class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @paged_collection = collection.each_slice(items_per_page).to_a
    @item_count = collection.size
    @items_per_page = items_per_page
  end
  
  # returns the number of items within the entire collection
  attr_reader :item_count
  
  # returns the number of pages
  def page_count
    @paged_collection.size
  end
  
  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    (page = @paged_collection[page_index]) ? page.size : -1
  end
  
  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index) 
    return -1 if item_index < 0 || item_index > @item_count - 1
    item_index / @items_per_page
  end
end