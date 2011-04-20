class CommentsController < ApplicationController
 def index
    @comments = Comment.all
    respond_to do |format|
      format.html # index.html.erb
      format.rss
    end
  end
  
  def create
    @comment = Comment.create!(params[:comment])
    flash[:notice] = "Thanks for commenting!"
    respond_to do |format|
      format.html { redirect_to comments_path }
      format.js 
    end
  end
  
  def destroy
     @comment = Comment.find(params[:id])
     @comment.destroy
     respond_to do |format|
       format.html { redirect_to comments_path }
       format.js 
     end
   end
   def avatar_url(comment)
     if comment.avatar_url.present?
       comment.avatar_url
     else
	default_url = "images/guest.png"
       gravatar_id = Digest::MD5::hexdigest(comment.email).downcase
       "http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}"
     end
  end
  
end
