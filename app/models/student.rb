class Student < ApplicationRecord
  require 'csv'
  has_one :classroom
  has_many :users,    :through => :classroom
  has_and_belongs_to_many :subjects
  attr_accessor :classroom_id
def self.import(file)
  CSV.foreach(file.path, headers: true) do |raw|
    student_hash = raw.to_hash
    student = Student.where(id: student_hash["class_id"])
    if student.count == 1
        student.first.update_attributes(student_hash)
      else
        Student.create!(student_hash)
      end
  end
end

end
