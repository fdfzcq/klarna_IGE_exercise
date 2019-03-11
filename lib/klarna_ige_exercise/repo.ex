defmodule KlarnaIGEExercise.Repo do
  use Ecto.Repo,
    otp_app: :klarna_ige_exercise,
    adapter: Ecto.Adapters.Postgres
end
