class StudentsController < ApplicationController
    def index
        # byebug
        students = Student.all
        render json: students
    end

    def grades
        # byebug
        # students = Student.all
        # render json: grades.maxmin
        students = Student.order("grade DESC")
        render json: students
    end

    def highest_grade
        student = Student.order("grade DESC").first
        render json: student
    end
end
