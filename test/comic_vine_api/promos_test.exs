defmodule ComicVineApi.PromosTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Promos.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Promos.get("1775")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end