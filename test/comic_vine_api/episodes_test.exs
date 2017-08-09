defmodule ComicVineApi.EpisodesTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Episodes.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Episodes.get("1")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end