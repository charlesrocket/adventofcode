input = File.read_lines("input")

def game1(input)
  points = {
    "A X" => 1 + 3,
    "A Y" => 2 + 6,
    "A Z" => 3 + 0,
    "B X" => 1 + 0,
    "B Y" => 2 + 3,
    "B Z" => 3 + 6,
    "C X" => 1 + 6,
    "C Y" => 2 + 0,
    "C Z" => 3 + 3,
  }

  total_score = 0

  input.each do |line|
    total_score += points[line]
  end

  total_score
end

def game2(input)
  points = {
    "A X" => 3 + 0,
    "A Y" => 1 + 3,
    "A Z" => 2 + 6,
    "B X" => 1 + 0,
    "B Y" => 2 + 3,
    "B Z" => 3 + 6,
    "C X" => 2 + 0,
    "C Y" => 3 + 3,
    "C Z" => 1 + 6,
  }

  total_score = 0

  input.each do |line|
    total_score += points[line]
  end

  total_score
end

puts "Total score 1: #{game1(input)}"
puts "Total score 2: #{game2(input)}"
