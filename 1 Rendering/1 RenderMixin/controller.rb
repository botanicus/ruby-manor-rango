require "rango/mixins/render"

class Posts < Rango::Controller
  include Rango::RenderMixin
  def show
    post = Post.get(params[:id])
    render "post.html", post: post
  end
end
