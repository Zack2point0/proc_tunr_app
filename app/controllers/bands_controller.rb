class BandsController < ApplicationController

	def new
	end

	def create
		Band.create(name: params[:name])
		redirect_to '/'
	end

	def index
		@bands = Band.all
	end

	def show

	end

end