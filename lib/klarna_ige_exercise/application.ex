defmodule KlarnaIGEExercise.Application do

  use Application

  def start(_type, _args) do
    children = [
      KlarnaIGEExerciseWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: KlarnaIGEExercise.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    KlarnaIGEExerciseWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
