raw_input = File.readlines('puzzle_001_input.txt')

counter = 0
raw_input.each_with_index do |num_string, index|
  next if index.zero?

  cur_num = num_string.to_i
  prev_num = raw_input[(index - 1)].to_i

  counter += 1 if cur_num > prev_num
end

puts counter
