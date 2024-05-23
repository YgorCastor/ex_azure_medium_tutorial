defmodule ExAzureSpeechTest do
  use ExUnit.Case
  doctest ExAzureSpeech

  test "greets the world" do
    assert ExAzureSpeech.hello() == :world
  end
end
