class PostController < ApplicationController

  def index
    posts = Post.all("ORDER BY created_at DESC")
    render("index.ecr")
  end

  def show
    if post = Post.find params["id"]
      render("show.ecr")
    else
      flash["warning"] = "Post with ID #{params["id"]} Not Found"
      redirect_to "/"
    end
  end
  
  def post_params
    params.validation do
      required(:title) { |f| !f.nil? }
      required(:body) { |f| !f.nil? }
    end
  end
end
