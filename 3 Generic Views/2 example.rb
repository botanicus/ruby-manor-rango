Usher::Interface.for(:rack) do
  # use generic view with default value
  get("/index.html").to(Rango::GV.redirect("/"))

  # just use generic view
  get("/:template").to(Rango::GV.static)

  # generic view with a hook
  get("/").to(Rango::GV.defer do |request, response|
    if request.session[:user] # user is logged in
      LandingPages.dispatcher(:registered_user)
    else
      LandingPages.dispatcher(:unregistered_user)
    end
  end)
end
