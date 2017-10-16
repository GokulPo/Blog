class Student < ApplicationRecord
  require 'csv'
  has_one :classroom
  has_many :teachers,    :through => :classroom

def self.import(file)
  CSV.foreach(file.path, headers: true) do |raw|
    #sname,roll_no,marks1,marks2,marks3 = raw
    #Student.create!(name: sname, roll_no:roll_no, marks1: marks1, marks2:marks2, marks3: marks3)
    product_hash = raw.to_hash
    product = Student.where(id: product_hash["class_id"])
    if product.count == 1
        product.first.update_attributes(product_hash)
      else
        Student.create!(product_hash)
      end
  end
end

end
