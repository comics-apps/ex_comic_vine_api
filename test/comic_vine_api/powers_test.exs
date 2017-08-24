defmodule ComicVineApi.PowersTest do
  use ExUnit.Case

  test ".all" do
    response = ComicVineApi.Powers.all(limit: 1)
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get" do
    response = ComicVineApi.Powers.get("36")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
  end

  test ".get with field_list" do
    response = ComicVineApi.Powers.get("36", field_list: "id")
    assert 1 == response["status_code"]
    assert "OK" == response["error"]
    assert ["characters", "id"] == response["results"] |> Map.keys
  end
end