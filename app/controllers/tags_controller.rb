class TagsController < ApplicationController

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
