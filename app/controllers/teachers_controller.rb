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

	end

	def edit
		@teacher = Teacher.find_by(id: params[:id])
	end

	def update
		@teacher.update_attributes(teacher_params)
	end

	def delete
		@teacher.destroy
		redirect_to :root
	end

	private

	def incident_params
		params = [:date_time, :expectation_violated]#, :major_or_minor, :anecdote, :location, :context, :duration, :possible_function, :staff_responses, :effect_on_behavior]
		params.require(:date_time).permit(:expectation_violated) # change to user
	end


end
