require './my_enumerable'

class MyList
  def initialize(*list)
    @list = list
  end

  def each
    MyEnumerable.print_list(@list)
  end
end

# # Create our list
list = MyList.new(1, 2, 3, 4)
list.each
# => #<MyList: @list=[1, 2, 3, 4]>

# # Test #all?
# irb> list.all? {|e| e < 5}
# => true
# irb> list.all? {|e| e > 5}
# => false

# # Test #any?
# irb> list.any? {|e| e == 2}
# => true
# irb> list.any? {|e| e == 5}
# => false

# # Test #filter
# irb> list.filter {|e| e.even?}
# => [2, 4]
