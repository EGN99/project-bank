class StudentsController < ApplicationController

    # before_action :authenticate_admin!

    # GET /students
    def index
        @students = Student.all 
        render json: @students 
    end

    
    def show 
        @student = Student.find(params[:id])
        render json: @student 
    end

    # POST /students
def create
    @student = Student.new(student_params)
  
    if @student.save
      render json: @student, status: :created, location: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end
  

private
def set_student
    @student = Student.find(params[:id])
end

def student_params
    params.require(:student).permit(:username, :email, :password)
end


end
