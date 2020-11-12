def quick_sort(array)
  return [] if array.empty?

  pivot = array.delete_at(rand(array.size))
  left, right = array.partition { |num| num < pivot }

  return *quick_sort(left), pivot, *quick_sort(right)
end

array = [33, 6, 21, 12, 19, 29, 38, 22, 14, 40]

p quick_sort(array)
# [6, 12, 14, 19, 21, 22, 29, 33, 38, 40]
