class CommentsController < ApplicationController
	before_filter :require_login, :only => :new
  def new
	@comment = Comment.new(params[:comment])
	@comment.code_id = params[:id]
	@comment.save
	redirect_to Code.find(@comment.code_id)
  end
end
