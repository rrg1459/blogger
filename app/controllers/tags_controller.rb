class TagsController < ApplicationController

	before_action :require_login, only: [:destroy]

	def index
		@tags = Tag.order(name: :asc).all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def destroy
		tag = Tag.find(params[:id])
		tag.destroy
		flash.notice = "Tag '#{tag.name}' deleted!"
		redirect_to root_path
	end

end
