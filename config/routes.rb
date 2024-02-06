Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "rules" })
  get("/rock", { :controller => "zebra", :action => "r_move" })
  get("/paper", { :controller => "zebra", :action => "p_move" })
  get("/scissors", { :controller => "zebra", :action => "s_move" })
end
