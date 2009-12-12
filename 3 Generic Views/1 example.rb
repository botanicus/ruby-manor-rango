# config.ru
require "rango/gv"
require "rango/mini"

module Rango::GV
  def self.redirect(url, status = 302)
    Rango::Mini.app do |request, response|
      response.redirect(url, status)
      return String.new
    end
  end
end

module Rango::GV
  def self.defer(&hook)
    Rango::Mini.app do |request, response|
      # hook.call should returns a Rack app
      return hook.call(request, response)
    end
  end
end
