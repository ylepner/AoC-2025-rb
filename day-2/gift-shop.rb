filename = File.join(__dir__, 'data.txt')

pairs = File.read(filename).strip.split(',').map { |pair| pair.split('-').map(&:to_i) }

sum = 0

def double_repeat?(num)
  str = num.to_s
  return false if str.length.odd?
  return false if str[0] == '0'

  half = str.length / 2
  str[0...half] == str[half..]
end

pairs.each do |pair|
  a, b = pair
  
  (a..b).each do |id|
    sum += id if double_repeat?(id)
  end
end

puts sum
