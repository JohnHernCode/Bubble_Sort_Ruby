def bubble_sort(array)
  loop do
    swapped = false # indicator for when to stop the loop
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
         array[i], array[i + 1] = array[i+1], array[i]
            swapped = true
      end
    end
    break if not swapped
  end
  array
end

def bubble_sort_by(array)
  loop do
    swapped = false
    (array.length-1).times do |i|
    if yield(array[i], array[i + 1]) > 0
        array[i], array[i + 1] = array[i + 1], array[i]
            swapped = true
    end
    end
    break if not swapped
  end
  array
end

print (
  bubble_sort_by(["hello", "hey", "hi"]) do |left, right|
    left.length - right.length
  end)