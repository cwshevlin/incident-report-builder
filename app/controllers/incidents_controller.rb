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
		puts "___________________"
		p incident_params
		@incident = Incident.new(incident_params)

		if @incident.save
			redirect_to incidents_path
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
		@incident.destroy
		redirect_to incidents_path
	end


	private

	def incident_params
		params.require(:incident).permit(:creator_id, :date_time, :expectation_violated, :major_or_minor, :anecdote, :location, :context, :duration, :possible_function, :staff_responses, :effect_on_behavior) # change to user
	end
end