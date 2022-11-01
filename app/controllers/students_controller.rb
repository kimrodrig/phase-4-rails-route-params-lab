class StudentsController < ApplicationController

  def index
    if params["name"]
      students = Student.find_by(first_name: params["name"].titleize) ||  Student.find_by(last_name: params["name"].titleize)
    else
      students = Student.all
    end
    render json: students
  end

  def show
    render json: Student.find(params[:id])
  end

end
