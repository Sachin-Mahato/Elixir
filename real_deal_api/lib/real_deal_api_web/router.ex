defmodule RealDealApiWeb.Router do
  use RealDealApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RealDealApiWeb do
    pipe_through :api
    get "/", DefaultController, :index
  end
end
