defmodule ComicVineApi.CharactersTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Characters.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Characters.get("1253")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end