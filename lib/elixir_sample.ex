defmodule ElixirSample do
  use Cauldron

  def handle(_, _, request) do
    request |> Request.reply(200, "Hello, World!")
  end
end

Cauldron.start ElixirSample, port: 5000

