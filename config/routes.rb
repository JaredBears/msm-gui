Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })
  get("/delete_director/:path_id", { :controller => "directors", :action => "destroy" })
  post("/create_director", { :controller => "directors", :action => "create" })
  post("/update_director/:path_id", { :controller => "directors", :action => "update" })

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  get("/delete_movie/:path_id", { :controller => "movies", :action => "destroy" })
  post("/create_movie", { :controller => "movies", :action => "create" })
  post("/update_movie/:path_id", { :controller => "movies", :action => "update" })
  
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })
  get("/delete_actor/:path_id", { :controller => "actors", :action => "destroy" })
  post("/create_actor", { :controller => "actors", :action => "create" })
  post("/update_actor/:path_id", { :controller => "actors", :action => "update" })
end
