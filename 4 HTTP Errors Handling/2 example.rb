class MyController < Rango::Controller
  # should returns [status, headers, body]
  def rescue_http_error(exception)
    response = exception.to_response
    headers  = self.headers.merge(response[1])
    [500, headers, response.last]
  end
end
