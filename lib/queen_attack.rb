
class Array
  define_method(:queen_attack) do |player|
  queen = self
  if queen == player
    "You can't stand on the same square."
  elsif (queen[0] - player[0]) + (queen[1] - player[1]) == 0
    "Queen attacks on SW-NE diagonal!"
  elsif (queen[0] - player[0]) == (queen[1] - player[1])
    "Queen attacks on NW-SE diagonal!"
  elsif queen[0] == player[0] || queen[1] == player[1]
      "Queen attacks! Direct horizontal or vertical lines are not safe!"
  else
    "You're safe, the Queen can't reach you there."
  end
  end
end
