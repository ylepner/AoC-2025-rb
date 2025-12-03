filename = File.join(__dir__, 'data.txt')
lines = File.readlines(filename, chomp: true)

total = 0

lines.each do |line|
  best_pair = 0

  (0...line.length - 1).each do |i|
    first = line[i].to_i

    max_right = 0
    ((i+1)...line.length).each do |j|
      digit = line[j].to_i
      max_right = digit if digit > max_right
    end

    pair = first * 10 + max_right
    best_pair = pair if pair > best_pair
  end

  total += best_pair
end

puts total