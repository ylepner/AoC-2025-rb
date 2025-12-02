filename = File.join(__dir__, 'data.txt')
lines = File.readlines(filename, chomp: true)
start = 50
result = 0

lines.each do |line|
  next if line.strip.empty?
  dir = line[0]
  number = line[1..].to_i

  if dir == 'L'
    start = (start - number) % 100
  else
    start = (start + number) % 100
  end

  result +=1 if start == 0
end

puts result
