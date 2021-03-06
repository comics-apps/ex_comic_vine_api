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

  test ".get with field_list" do
    response = ComicVineApi.Movies.get("1", field_list: "id")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
    assert ["id"] == response["results"] |> Map.keys
  end
end
