# top level comment
class Bob
  def self.hey(statement)
    if statement.strip.empty?
      'Fine. Be that way!'
    elsif statement.upcase == statement && statement.downcase != statement
      'Whoa, chill out!'
    elsif statement.strip.end_with?('?')
      'Sure.'
    else
      'Whatever.'
    end
  end
end
module BookKeeping
  VERSION = 1
end
#     ()()
#    (*.*)
#   ("__")
# Code bunny protects this code
