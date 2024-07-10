def insertion_sort(arr)
    (1...arr.length).each do |i|
      key = arr[i]
      j = i - 1
      while j >= 0 && arr[j] > key
        arr[j + 1] = arr[j]
        j -= 1
      end
      arr[j + 1] = key
      puts "Adım #{i}: #{arr.inspect}"
    end
    arr
  end
  
  # Kullanıcıdan dizi girişi
  puts "Lütfen sıralamak istediğiniz sayıları aralarında boşluk olacak şekilde girin:"
  input = gets.chomp
  arr = input.split.map(&:to_i)
  
  puts "Başlangıç: #{arr.inspect}"
  sorted_arr = insertion_sort(arr)
  puts "Sıralanmış dizi: #{sorted_arr}"
  