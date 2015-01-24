class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def show
		@student = student.find_by(id: params[:id])
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(params[:student])
		redirect_to students_path
	end

	def edit
		@student = student.find_by(id: params[:id])
	end

	def update
		
	end

	def delete

	end

end
