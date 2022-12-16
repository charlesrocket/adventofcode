input = File.read_lines("input")
calories = {} of String => Int32
current_elf = ""

input.each do |line|
  if line.strip.empty?
    current_elf = ""
  else
    if current_elf.empty?
      current_elf = line
      calories[current_elf] = 0
    end

    calories[current_elf] += line.to_i
  end
end

top_elf = calories.max_by { |elf, calories| calories }
top_elves = calories.values.sort.last(3).sum

puts "Elf №#{top_elf[0]} with #{top_elf[1]} calories"
puts "Total caliroes of top 3 elves: #{top_elves}"
