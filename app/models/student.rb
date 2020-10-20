# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students


# def self.search(search)
#   search.present? ? self.all.select { |student| student.name.downcase.include?(search.downcase) } : self.all
# end

def self.search(search)
  if search
    student_person = Student.where("name LIKE ?", "%" + search + "%")
    # byebug
    if student_person
      @students = student_person
    else
      Student.all
    end
  else
    Student.all
  end
end



end

