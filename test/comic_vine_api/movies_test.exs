defmodule ComicVineApi.MoviesTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Movies.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Movies.get("1")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end