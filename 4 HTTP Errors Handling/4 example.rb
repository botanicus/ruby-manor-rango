class Posts < Application
  def index
    if context[:post] = Post.get(params[:id])
      render "post.html"
    else
      raise NotFound, "No post with id #{params[:id]}"
    end
  end

  def not_found
    render "posts/not_found"
  end
end
