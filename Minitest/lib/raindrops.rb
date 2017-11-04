require 'minitest/autorun'
# Msegun commentary elo 320
class Raindrops
  NAMES = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }.freeze
  def self.convert(number)
    message = ''
    NAMES.each do |(num, word)|
      message << word if (number % num).zero? # number % num == 0
    end
    message.empty? ? number.to_s : message
  end
end

module BookKeeping
  VERSION = 3
end
#     ()()
#    (*.*)
#   ("__")
# Code bunny protects this code
