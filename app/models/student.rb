class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  # def self.search_name(name)
  #   students = Student.where("first_name = params[:name]") || Student.where("last_name = params[:name]")
  # end

end
