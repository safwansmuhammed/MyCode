class MyProgram
def numletter(num)
start = Time.now
number_string = num.to_s
cipher_key = {2 => ["a", "b", "c"],3 => ["d", "e", "f"],4 => ["g", "h", "i"],5 => ["j", "k", "l"],6 => ["m", "n", "o"],7 => ["p", "q", "r", "s"],8 => ["t", "u", "v"],9 => ["w", "x", "y", "z"]}
dictionary = []
    file_path = "/Downloads/dictionary.txt"
    File.foreach( file_path ) do |word|
      dictionary.push word.chop.to_s.downcase
    end
    number_array_s = number_string.split("")
    number_array = number_array_s.map { |e| e.to_i  }
    array = []
    array1 = []
    array2 = []
    array3 = []
    array4 = []
    array5 = []
    array6 = []
    array7 = []
    array8 = []
    array9 = []
    f_array = []
    length = number_array.length
    for i in 0..length-1
    if i == 0
    if cipher_key[number_array[i]].length == 3
    array = dictionary.select{ |e| e[i].include?(cipher_key[number_array[i]][0])}
    array += dictionary.select{ |e| e[i].include?(cipher_key[number_array[i]][1])}
    array += dictionary.select{ |e| e[i].include?(cipher_key[number_array[i]][2])}
    elsif cipher_key[number_array[i]].length == 4
    array = dictionary.select{ |e| e[i].include?(cipher_key[number_array[i]][0])}
    array += dictionary.select{ |e| e[i].include?(cipher_key[number_array[i]][1])}
    array += dictionary.select{ |e| e[i].include?(cipher_key[number_array[i]][2])}
    array += dictionary.select{ |e| e[i].include?(cipher_key[number_array[i]][3])}
    end
   elsif (i == 1)
    if cipher_key[number_array[i]].length == 3
    array1 = array.select{ |e| e[i].include?(cipher_key[number_array[i]][0])}
    array1 += array.select{ |e| e[i].include?(cipher_key[number_array[i]][1])}
    array1 += array.select{ |e| e[i].include?(cipher_key[number_array[i]][2])}
    elsif cipher_key[number_array[i]].length == 4
    array1 = array.select{ |e| e[i].include?(cipher_key[number_array[i]][0])}
    array1 += array.select{ |e| e[i].include?(cipher_key[number_array[i]][1])}
    array1 += array.select{ |e| e[i].include?(cipher_key[number_array[i]][2])}
    array1 += array.select{ |e| e[i].include?(cipher_key[number_array[i]][3])}
    end
   elsif (i == 2)
    if cipher_key[number_array[i]].length == 3
    array2 = array1.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array2 += array1.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array2 += array1.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    elsif cipher_key[number_array[i]].length == 4
    array2 = array1.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array2 += array1.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array2 += array1.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    array2 += array1.select{ |e| e[i] == cipher_key[number_array[i]][3]}
    end
    arr31 = array2.select{|x| x.length == 3}
    array2 = array2 - arr31
   elsif (i == 3)
    if cipher_key[number_array[i]].length == 3
    array3 = array2.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array3 += array2.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array3 += array2.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    elsif cipher_key[number_array[i]].length == 4
    array3 = array2.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array3 += array2.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array3 += array2.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    array3 += array2.select{ |e| e[i] == cipher_key[number_array[i]][3]}
    end
   elsif (i == 4)
    if cipher_key[number_array[i]].length == 3
    array4 = array3.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array4 += array3.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array4 += array3.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    elsif cipher_key[number_array[i]].length == 4
    array4 = array3.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array4 += array3.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array4 += array3.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    array4 += array3.select{ |e| e[i] == cipher_key[number_array[i]][3]}
    end
   elsif (i == 5)
    if cipher_key[number_array[i]].length == 3
    array5 = array4.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array5 += array4.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array5 += array4.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    elsif cipher_key[number_array[i]].length == 4
    array5 = array4.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array5 += array4.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array5 += array4.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    array5 += array4.select{ |e| e[i] == cipher_key[number_array[i]][3]}
    end
   elsif (i == 6)
    if cipher_key[number_array[i]].length == 3
    array6 = array5.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array6 += array5.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array6 += array5.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    elsif cipher_key[number_array[i]].length == 4
    array6 = array5.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array6 += array5.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array6 += array5.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    array6 += array5.select{ |e| e[i] == cipher_key[number_array[i]][3]}
    end
   elsif (i == 7)
    if cipher_key[number_array[i]].length == 3
    array7 = array6.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array7 += array6.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array7 += array6.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    elsif cipher_key[number_array[i]].length == 4
    array7 = array6.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array7 += array6.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array7 += array6.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    array7 += array6.select{ |e| e[i] == cipher_key[number_array[i]][3]}
    end
    elsif (i == 8)
    if cipher_key[number_array[i]].length == 3
    array8 = array7.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array8 += array7.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array8 += array7.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    elsif cipher_key[number_array[i]].length == 4
    array8 = array7.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array8 += array7.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array8 += array7.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    array8 += array7.select{ |e| e[i] == cipher_key[number_array[i]][3]}
    end
    elsif (i == 9)
    if cipher_key[number_array[i]].length == 3
    array9 = array8.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array9 += array8.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array9 += array8.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    elsif cipher_key[number_array[i]].length == 4
    array9 = array8.select{ |e| e[i] == cipher_key[number_array[i]][0]}
    array9 += array8.select{ |e| e[i] == cipher_key[number_array[i]][1]}
    array9 += array8.select{ |e| e[i] == cipher_key[number_array[i]][2]}
    array9 += array8.select{ |e| e[i] == cipher_key[number_array[i]][3]}
    end
   end
    end
    f_array = array9.select{|ele| ele.length <= 10}
    puts f_array
end
end


@a = MyProgram.new
@a.numletter(6686787825)