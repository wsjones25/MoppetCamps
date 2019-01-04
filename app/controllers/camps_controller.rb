class CampsController < ApplicationController
	before_action :set_camp, only: [:show]

	def index
		@camps = Camp.all
	end

	def show
	end

	private
	def set_camp
		@camp = Camp.find(params[:id])
	end
end