defmodule RealDealApiWeb.DefaultController do
  use RealDealApiWeb, :controller
  def index(conn, _params)do
    text conn, "THE REAL DEAL API IS LIVE - #{Mix.env()}"
  end
end
