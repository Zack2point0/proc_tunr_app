class MusiciansController < ApplicationController

	def index
		@musicians = Musician.all
	end

	def create
		name = params[:name]
		Musician.create(name: name)
		redirect_to musicians_path
	end

	def new

	end

end
