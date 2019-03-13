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
    sorted_arr = @roster.map do |grade, arr|
      arr.sort {|a, b| a[0] <=> b[0]}
    end
  end

end