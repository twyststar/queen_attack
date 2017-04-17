class Array
  define_method(:queen_attack?) do
    if (self[0] == 1) || (self[1] == 1) || (self[1] == self[0])
      true
    else
      false
    end
  end
end

[2,2].queen_attack?()
