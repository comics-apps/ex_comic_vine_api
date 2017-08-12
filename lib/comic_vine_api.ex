defmodule ComicVineApi do
  use HTTPoison.Base

  def process_url(endpoint) do
    "https://comicvine.gamespot.com/api/" <> endpoint
  end

  def process_response_body(body) do
    JSX.decode!(body)
  end

  def request(endpoint, params \\ [], options \\ []) do
    api_key = params[:api_key] || api_key()
    params = params |> Keyword.delete(:api_key)
    new_params = Enum.concat([api_key: api_key, format: "json"], params)
    get!(endpoint <> "/?" <> URI.encode_query(new_params), [], options).body
  end

  def api_key do
    Application.get_env(:comic_vine_api, :api_key) ||
      System.get_env("COMIC_VINE_API_KEY")
  end
end
