defmodule ExAzureSpeech.Websocket do
  use Fresh

  alias ExAzureSpeech.SocketConfig
  alias ExAzureSpeech.Guid

  def open_connection(opts) do
    start_link(
      uri: SocketConfig.get_uri(opts),
      state: %{},
      opts: [
        headers: base_headers(opts),
        info_logging: true
      ]
    )
  end

  def handle_connect(status, headers, state) do
    IO.puts(inspect(status))
    IO.puts(inspect(headers))
    {:ok, state}
  end

  defp base_headers(opts),
    do: [
      {"Ocp-Apim-Subscription-Key", opts[:auth_key]},
      {"X-ConnectionId", Guid.create_no_dash_guid()}
    ]
end
