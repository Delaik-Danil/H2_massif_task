puts "Введіть речення:"
sentence = gets.chomp

def to_pig_latin(word)
  match = word.match(/^([A-Za-z]+)([^A-Za-z]*)$/)
  return word unless match

  core = match[1]
  punctuation = match[2]

  pig_word = core[1..-1].to_s + core[0] + "ay"

  pig_word = pig_word.capitalize if core[0] == core[0].upcase

  pig_word + punctuation
end

pig_latin_sentence = sentence.split.map { |word| to_pig_latin(word) }.join(" ")

puts "Pig Latin: #{pig_latin_sentence}"
