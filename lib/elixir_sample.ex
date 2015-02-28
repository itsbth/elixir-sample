defmodule ElixirSample do
  use Application
  use Cauldron

  def start(_type, _args) do
    Cauldron.start ElixirSample, port: 5000
  end

  def handle(_, _, request) do
    request |> Request.reply(200, "Hello, World!")
  end
end


