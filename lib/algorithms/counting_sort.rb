def counting_sort(arr)
  max = arr.max


count_array = Array.new(max+1,0)

arr.each {|element| count_array[element]+=1}


(1..max).each{|i|count_array[i]+= count_array [i-1]}

output_array = Array.new(arr.length)


(arr.length - 1).downto(0) do |i|
  output_array[count_array[arr[i]]-1] = arr[i]
  count_array[arr[i]] -= 1
end

  output_array
end


counting_sort([1,4,5,3,10,11])



testes 123ga