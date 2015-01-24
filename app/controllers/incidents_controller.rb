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

	end

	def edit
		@incident = Incident.find_by(id: params[:id])
	end

	def update
		@incident = Incident.find_by(id: params[:id])
		
	end

	def delete

	end


end
