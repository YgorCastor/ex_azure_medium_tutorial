defmodule ExAzureSpeech.SocketConfig do
  @relative_uris [
    interactive: "/speech/recognition/interactive/cognitiveservices/v1",
    conversation: "/speech/recognition/conversation/cognitiveservices/v1",
    dictation: "/speech/recognition/dictation/cognitiveservices/v1",
    universal: "/speech/universal/v"
  ]

  def new(),
    do: [
      region: "westeurope",
      language: "en-US",
      format: :simple,
      auth_key: System.get_env("AZURE_SPEECH_KEY"),
      recognition_mode: :conversation
    ]

  def get_uri(config),
    do:
      "wss://#{config[:region]}.stt.speech.microsoft.com#{get_relative_uri(config)}?format=#{Atom.to_string(config[:format])}&language=#{config[:language]}"

  defp get_relative_uri(config), do: @relative_uris[config[:recognition_mode]]
end
