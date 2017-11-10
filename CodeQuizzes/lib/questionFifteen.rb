# top class level commentary
class Integer
  def concat(num)
    s1 = self.to_s
    s2 = num.to_s
    s1 += s2
    s1.to_i
  end
end
