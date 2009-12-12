# From Rango::Controller.call
begin
  # your controller invokation
rescue Rango::HttpError => exception
  exception.to_response
end
