# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OEML-RESTAPI.Model.Message do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"type",
    :"severity",
    :"exchange_id",
    :"message"
  ]

  @type t :: %__MODULE__{
    :"type" => String.t | nil,
    :"severity" => OEML-RESTAPI.Model.Severity.t | nil,
    :"exchange_id" => String.t | nil,
    :"message" => String.t | nil
  }
end

defimpl Poison.Decoder, for: OEML-RESTAPI.Model.Message do
  import OEML-RESTAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"severity", :struct, OEML-RESTAPI.Model.Severity, options)
  end
end

