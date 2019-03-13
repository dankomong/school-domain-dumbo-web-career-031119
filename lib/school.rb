# code here!
class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade].push(name)
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    # @roster.each do |grade, arr|
    #   arr
    # end
    @roster
  end
end