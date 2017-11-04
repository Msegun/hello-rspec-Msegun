require 'date'
class String
  def date_convertible?
    return true if Date.parse(self) rescue false
    # !!(Date.parse(self) rescue false)
  end
end
