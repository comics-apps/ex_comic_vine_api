defmodule ComicVineApi.LocationsTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Locations.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Locations.get("21766")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get with field_list" do
    response = ComicVineApi.Locations.get("21766", field_list: "id")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
    assert ["id"] == response["results"] |> Map.keys
  end
end
