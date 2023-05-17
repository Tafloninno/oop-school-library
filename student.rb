require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, parent_permission: true, name: 'Unknown')
    super(age, parent_permission: parent_permission, name: name)
    self.classroom = classroom
  end

  def join_classroom(classroom)
    classroom.add_student(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
