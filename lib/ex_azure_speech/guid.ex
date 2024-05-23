defmodule ExAzureSpeech.Guid do
  def create_no_dash_guid(),
    do:
      UUID.uuid4()
      |> String.replace("-", "")
      |> String.upcase()
end
