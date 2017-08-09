defmodule ComicVineApi.SeriesTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Series.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Series.get("1")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end