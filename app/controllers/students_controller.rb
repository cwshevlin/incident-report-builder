class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def show
		@student = Student.find_by(id: params[:id])
	end

	def new
		@student = Student.new
	end

	def create
		student = Student.new(student_params)
		if student.save
			redirect_to students_path
		else
			flash[:error] = "Data not valid. Try again"
			redirect_to :back
		end
	end

	def edit
		@student = student.find_by(id: params[:id])
	end

	def update
		@student.update_attributes(student_params)
		redirect_to :back
	end

	def delete
		@student.destroy
		redirect_to students_path
	end

	private

	def student_params
		params = [:first_name, :last_name, :grade]
		params.require(:date_time).permit(:expectation_violated) # change to user
	end

end
