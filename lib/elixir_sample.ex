defmodule ElixirSample do
  def start(_type, _args) do
    dispatch = :cowboy_router.compile([
      {
        :_,
        [
          {"/", IndexHandler, []}
        ]
      }
    ])
    { :ok, _ } = :cowboy.start_http(:http, 100, [{:port, 5000}], [{:env, [{:dispatch, dispatch}]}])
  end
end

