defmodule BirdCount do
  def today(list) do
    List.first(list, nil)
  end

  def increment_day_count(list) do
    case length(list) do
      0 -> List.insert_at(list, 0, 1)
      _ -> List.update_at(list, 0, &(&1 + 1))
    end
  end

  def has_day_without_birds?(list) do
    Enum.any?(list, &(&1 == 0))
  end

  def total(list) do
    Enum.sum(list)
  end

  def busy_days(list) do
    Enum.count(list, &(&1 >= 5))
  end
end
