# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OEML-RESTAPI.Api.Positions do
  @moduledoc """
  API calls for all endpoints tagged `Positions`.
  """

  alias OEML-RESTAPI.Connection
  import OEML-RESTAPI.RequestBuilder


  @doc """
  Get open positions
  Get current open positions across all or single exchange.

  ## Parameters

  - connection (OEML-RESTAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :exchange_id (String.t): Filter the balances to the specific exchange.
  ## Returns

  {:ok, [%Position{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec v1_positions_get(Tesla.Env.client, keyword()) :: {:ok, list(OEML-RESTAPI.Model.Position.t)} | {:ok, OEML-RESTAPI.Model.Message.t} | {:error, Tesla.Env.t}
  def v1_positions_get(connection, opts \\ []) do
    optional_params = %{
      :"exchange_id" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/positions")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%OEML-RESTAPI.Model.Position{}]},
      { 490, %OEML-RESTAPI.Model.Message{}}
    ])
  end
end
