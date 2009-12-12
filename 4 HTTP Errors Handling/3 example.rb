require "rango/mixins/rendering"

class Application < Rango::Controller
  include Rango::ExplicitRendering
  # should returns string (body)
  # can set exception.status
  # can set exception.headers
  def render_http_error(exception)
    self.send(exception.to_snakecase)
  rescue TemplateNotFound
    render "errors/generic.html"
  end
end
