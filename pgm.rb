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
end
end