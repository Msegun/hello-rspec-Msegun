#top level comentary
class Float
  def to_money
    format('%.2f', self).prepend('$')
  end
end
