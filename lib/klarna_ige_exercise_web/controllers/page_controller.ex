defmodule KlarnaIGEExerciseWeb.PageController do
  use KlarnaIGEExerciseWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
