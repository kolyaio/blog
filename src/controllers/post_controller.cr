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

  def new
    post = Post.new
    render("new.ecr")
  end

  def create
    post = Post.new(post_params.validate!)

    if post.valid? && post.save
      flash["success"] = "Created Post successfully."
      redirect_to "/"
    else
      flash["danger"] = "Could not create Post!"
      render("new.ecr")
    end
  end

  def edit
    if post = Post.find params["id"]
      render("edit.ecr")
    else
      flash["warning"] = "Post with ID #{params["id"]} Not Found"
      redirect_to "/"
    end
  end

  def update
    if post = Post.find(params["id"])
      post.set_attributes(post_params.validate!)
      if post.valid? && post.save
        flash["success"] = "Updated Post successfully."
        redirect_to "/"
      else
        flash["danger"] = "Could not update Post!"
        render("edit.ecr")
      end
    else
      flash["warning"] = "Post with ID #{params["id"]} Not Found"
      redirect_to "/posts"
    end
  end

  def destroy
    if post = Post.find params["id"]
      post.destroy
    else
      flash["warning"] = "Post with ID #{params["id"]} Not Found"
    end
    redirect_to "/"
  end

  def post_params
    params.validation do
      required(:title) { |f| !f.nil? }
      required(:body) { |f| !f.nil? }
    end
  end
end
