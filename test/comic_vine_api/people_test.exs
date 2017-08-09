defmodule ComicVineApi.PeopleTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.People.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.People.get("1251")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end
end