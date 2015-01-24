class TeachersController < ApplicationController

	def index
		@teachers = Teacher.all
	end

	def show
		@teacher = Teacher.find_by(id: params[:id])
	end

	def new
		@teacher = Teacher.new
	end

	def create
		teacher = Teacher.new(teacher_params)
		if teacher.save
			redirect_to teachers_path
		else
			flash[:error] = "Data not valid. Try again"
			redirect_to :back
		end
	end

	def edit
		@teacher = Teacher.find_by(id: params[:id])
	end

	def update
		@teacher.update_attributes(teacher_params)
		redirect_to :back
	end

	def delete
		@teacher.destroy
		redirect_to teachers_path
	end

	private

	def teacher_params
		params = [:first_name, :last_name, :email]
		params.require(:date_time).permit(:expectation_violated) # change to user
	end


end
