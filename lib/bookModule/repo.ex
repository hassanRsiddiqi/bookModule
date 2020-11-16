defmodule BookModule.Repo do
  use Ecto.Repo,
    otp_app: :bookModule,
    adapter: Ecto.Adapters.Postgres
end
