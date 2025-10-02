puts "Введіть числа через пробіл:"
input = gets.chomp
arr = input.split.map(&:to_i)

frequency = Hash.new(0)
arr.each { |num| frequency[num] += 1 }

max_freq = frequency.values.max
most_frequent = frequency.select { |k, v| v == max_freq }.keys
puts "Найчастіше зустрічається(ються): #{most_frequent.join(', ')}"
