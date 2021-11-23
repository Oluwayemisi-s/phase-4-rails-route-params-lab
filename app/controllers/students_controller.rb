class StudentsController < ApplicationController

  def index
    students = if params[:name]
                students = Student.where("first_name = ? or last_name = ?", params[:name].capitalize, params[:name].capitalize)
              else
                Student.all
              end
    render json: students
    
  end

  def student
    student = Student.find_by(id: params[:id])
    render json: student 
  end

end
