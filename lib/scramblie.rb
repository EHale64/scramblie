class Scramblie
    def scramble(s1, s2)
        #   STDOUT.puts(s1, s2)
        mapped = s2.chars.map do |letter|
            s1.include?(letter) 
            s1.count(letter) >= s2.count(letter)
        end
        mapped.all?(true)
    end
end