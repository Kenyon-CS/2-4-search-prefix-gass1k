def search_items_starting_with(array, prefix)
  array.select { |item| item.start_with?(prefix) }
end

# Input from the user for array elements
puts "Enter the elements of the array (type 'done' when finished):"
input_array = []
loop do
  element = gets.chomp.strip
  break if element.downcase == 'done'
  input_array << element
end

# Input from the user for the prefix
puts "Enter the prefix to search for:"
prefix = gets.chomp.strip

# Call the function and display the result
result = search_items_starting_with(input_array, prefix)
puts "Items starting with '#{prefix}':"
puts result.inspect
