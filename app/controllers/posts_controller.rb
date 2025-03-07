# Controller for managing blog posts including CRUD operations
class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @pagy, @posts = pagy(Post.all, items: 3)

    if request.variant == :turbo_stream
      render turbo_stream: 'posts/index.turbo_stream.erb'
    end
  end

  # GET /posts/1 or /posts/1.json
  def show; end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit; end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)
    @post.save
    @pagy, @posts = pagy(Post.all, items: 3)

    respond_to do |format|
      format.turbo_stream
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    @post.update(post_params)

    respond_to do |format|
      format.turbo_stream
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    if request.method == 'GET'
      render 'posts/destroy'
    else
      @post.destroy!
      @pagy, @posts = pagy(Post.all, items: 3)

      respond_to do |format|
        format.turbo_stream
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
