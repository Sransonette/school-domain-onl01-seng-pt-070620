class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 

  def add_student(name, grade)
    if roster[grade] ||= []
      roster[grade] << name
    end
  end
  
  def grade(name)
    roster.detect do |x, y|
      if x == name
        return y 
      end
    end
  end
end
