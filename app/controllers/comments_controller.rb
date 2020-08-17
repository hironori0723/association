class CommentsController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    comment = current_user.comments.build(comment_params)
    comment.tweet_id = tweet_id 
    comment.save
    redirect_to tweets_path
  end

  private

    def comment_params
      params.require(:comment).permit(:body)
    end

end
