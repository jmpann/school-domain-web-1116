require 'pry'

class School

attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    ### have to figure out what this means
    roster[grade] << student
  end

  def grade(grade_number)
    roster[grade_number]
  end

  def sort
    sort_by_grade = roster.sort.to_h
    sort_by_grade.each do |grade, student_list|
      student_list.sort!
    end
  end

end
