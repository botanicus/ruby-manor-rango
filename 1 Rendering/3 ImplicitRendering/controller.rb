require "rango/mixins/rendering"

class Posts < Rango::Controller
  include Rango::ImplicitRendering
  def show
    @post = Post.get(params[:id])
    render "post.html"
  end
end
