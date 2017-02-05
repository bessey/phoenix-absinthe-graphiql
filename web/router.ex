defmodule AbsintheReact.Router do
  use AbsintheReact.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :graphql do
    plug Plug.Parsers,
      parsers: [:urlencoded, :multipart, :json],
      pass: ["*/*"],
      json_decoder: Poison

    forward "/graphql", Absinthe.Plug,
      schema: AbsintheReact.Schema
  end

  scope "/", AbsintheReact do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/graphql", AbsintheReact do
    pipe_through :graphql
  end
end
