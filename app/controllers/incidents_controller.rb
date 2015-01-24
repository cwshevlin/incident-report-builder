class IncidentsController < ApplicationController

	def index
		@incidents = Incident.all
	end

	def show
		@incident = Incident.find_by(id: params[:id])
	end

	def new
		@incident = Incident.new
	end

	def create
		@incident = Incident.new(incident_params)

		if @incident.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@incident = Incident.find_by(id: params[:id])
	end

	def update
		@incident = Incident.find_by(id: params[:id])		
	end

	def delete

	end


	private

		def incident_params
			params = [:date_time, :expectation_violated, :major_or_minor, :anecdote, :location, :context, :duration, :possible_function, :staff_responses, :effect_on_behavior]
			params.require(:date_time).permit(:expectation_violated) # change to user
		end
end