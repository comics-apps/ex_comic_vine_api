defmodule ComicVineApi.TeamsTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Teams.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Teams.get("1800")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end