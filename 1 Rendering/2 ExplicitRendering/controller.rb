require "rango/mixins/rendering"

class Posts < Rango::Controller
  include Rango::ExplicitRendering
  def show
    context[:post] = Post.get(params[:id])
    render "post.html"
  end
end
