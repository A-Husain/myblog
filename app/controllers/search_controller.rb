class SearchController < ApplicationController
  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true)
    
    #@posts = @q.result(distinct: true).order(created_at: :desc)

    #if params[:category].blank?
     # @posts = @posts.paginate(:page => params[:page], per_page: 15)
    #else
     # @posts = @posts.paginate(:page => params[:page], per_page: 5)
    #end
  end

  #def show
    #@q = Post.ransack(params[:q])
  #end

end
