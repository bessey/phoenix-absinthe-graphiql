defmodule AbsintheReact.PageController do
  use AbsintheReact.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
