class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    students = Student.find_by(id:params[:id])
    render json: students.to_json(only:[:id, :first_name, :last_name, :grade])
  end
end
