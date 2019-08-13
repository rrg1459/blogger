module ArticlesHelper

	def check_user
		if @article.author_id != current_user.id
			flash.notice = "You aren't the author!!!"
			redirect_to root_path
		end
	end

	def article_params
		params.require(:article).permit(:title, :body, :tag_list, :image, :author_id)
	end

end
