def bubble_sort (arr)
  n = arr.length
  # Teste para ver se esta funcionando
  # puts n

  (0..n - 1).each do |i|
    (0..n - i - 2).each do |j|
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
  # arr
end

# testando codigo
# array = [1,5,3,25]
# bubble_sort(array)
# puts "Array ordenado: #{array}"

