defmodule Starbeast.PageController do
  use Starbeast.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
