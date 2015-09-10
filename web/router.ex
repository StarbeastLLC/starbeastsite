defmodule Starbeast.Router do
  use Starbeast.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Starbeast do
    pipe_through :browser # Use the default browser stack

    post "/contact", MailerController, :contact
    post "/apply", MailerController, :apply
    get "/", PageController, :index

  end

  # Other scopes may use custom stacks.
  # scope "/api", Starbeast do
  #   pipe_through :api
  # end
end
