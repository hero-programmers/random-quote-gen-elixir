defmodule RandomQuoteGen do
  alias HTTPoison
  alias Jason

  def main do
    quote()
  end

  def quote do
    api_url = "https://zenquotes.io/api/random"

    {:ok, response} = HTTPoison.get(api_url)

    case Jason.decode(response.body) do
      {:ok, data} ->
        %{"q" => quote, "a" => author} = Enum.at(data, 0)
        IO.puts(~c'"#{quote}"\n -#{author}')
    end
  end
end
