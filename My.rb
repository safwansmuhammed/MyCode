class MyProgram

  def numletter(digits)
    return [] if digits.nil? || digits.length != 10 || digits.split('').select{|a|(a.to_i == 0 || a.to_i == 1)}.length > 0
    letters = {"2" => ["a", "b", "c"],"3" => ["d", "e", "f"],"4" => ["g", "h", "i"],"5" => ["j", "k", "l"],"6" => ["m", "n", "o"],"7" => ["p", "q", "r", "s"],"8" => ["t", "u", "v"],"9" => ["w", "x", "y", "z"]}

    dictionary = []
    file_path = "/Downloads/dictionary.txt"
    File.foreach( file_path ) do |word|
      dictionary.push word.chop.to_s.downcase
    end
    keys = digits.chars.map{|digit|letters[digit]}

    results = {}
    total_number = keys.length - 1
    for i in (2..total_number)
      first_array = keys[0..i]
      second_array = keys[i + 1..total_number]
      next if first_array.length < 3 || second_array.length < 3
      first_combination = first_array.shift.product(*first_array).map(&:join)
      next if first_combination.nil?
      second_combination = second_array.shift.product(*second_array).map(&:join)
      next if second_combination.nil?
      results[i] = [(first_combination & dictionary), (second_combination & dictionary)] 
    end
    final_words = []
    results.each do |key, combinataions|
      next if combinataions.first.nil? || combinataions.last.nil?
      combinataions.first.product(combinataions.last).each do |combo_words|
        final_words << combo_words
      end
    end
    final_words << (keys.shift.product(*keys).map(&:join) & dictionary).join(", ")
    final_words
  end

end

final_words = MyProgram.new().numletter("6686787825")	
puts final_words.map{|x| x.class == Array ? x.join(',') : x}