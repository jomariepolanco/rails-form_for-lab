class StudentsController < ApplicationController
    def new
        @student = Student.new 
    end
    
    def create
        @student = Student.new(params.require(:student).permit(:first_name, :last_name))
        @student.save 
        redirect_to student_path(@student)
    end

    def show
        @student = Student.find(params[:id])
        render :show
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def index
        @students = Student.all 
        render :index
    end
end