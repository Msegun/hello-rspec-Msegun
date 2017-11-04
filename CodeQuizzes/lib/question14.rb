class String
  def numeric?
    return true if Float(self) rescue false
  end
end
