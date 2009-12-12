Usher::Interface.for(:rack) do
  get("/posts").    to(Rango::GV::Scaffolding.list(Post))
  get("/post").     to(Rango::GV::Scaffolding.show(Post))
  get("/post/new"). to(Rango::GV::Scaffolding.new(Post))
  post("/post").    to(Rango::GV::Scaffolding.create(Post, "/post"))
  delete("/post").  to(Rango::GV::Scaffolding.destroy(Post, "/posts"))
end
