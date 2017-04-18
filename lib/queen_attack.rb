# class Array
#   define_method(:queen_attack?) do
#     if (self[0] == 1) || (self[1] == 1) || (self[1] == self[0])
#       true
#     else
#       false
#     end
#   end
# end
#
# [2,2].queen_attack?()
class Array
  define_method(:queen_attack) do |player|
    if self[0] == player[0] || self[1] == player[1]
      "Queen attacks! Direct horizontal or vertical lines are not safe!"
    elsif (self[0] - player[0]) + (self[1] - player[1]) == 0
      "Queen attacks on SW-NE diagonal!"
    elsif (self[0] - player[0]) == (self[1] - player[1])
      "Queen attacks on NW-SE diagonal!"
    else
      "You're safe, the Queen can't reach you there."
    end
  end
end
