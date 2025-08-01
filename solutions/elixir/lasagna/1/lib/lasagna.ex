defmodule Lasagna do
  @lasagna_oven_time 40
  @layer_preparation_time 2

  def expected_minutes_in_oven(), do: @lasagna_oven_time

  def remaining_minutes_in_oven(minutes_in_oven) do
    Lasagna.expected_minutes_in_oven() - minutes_in_oven
  end

  def preparation_time_in_minutes(layers), do: layers * @layer_preparation_time

  def total_time_in_minutes(layers, minutes_cooked) do
    Lasagna.preparation_time_in_minutes(layers) + minutes_cooked
  end

  def alarm do
    "Ding!"
  end
end
