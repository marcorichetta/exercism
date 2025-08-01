defmodule KitchenCalculator do
  @conversion_table %{
    :milliliter => 1,
    :cup => 240,
    :fluid_ounce => 30,
    :teaspoon => 5,
    :tablespoon => 15
  }

  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter({:milliliter, volume} = volume_pair) do
    {:milliliter, volume}
  end

  def to_milliliter({:cup, volume} = volume_pair) do
    {:milliliter, volume * @conversion_table[:cup]}
  end

  def to_milliliter({:fluid_ounce, volume} = volume_pair) do
    {:milliliter, volume * @conversion_table[:fluid_ounce]}
  end

  def to_milliliter({:teaspoon, volume} = volume_pair) do
    {:milliliter, volume * @conversion_table[:teaspoon]}
  end

  def to_milliliter({:tablespoon, volume} = volume_pair) do
    {:milliliter, volume * @conversion_table[:tablespoon]}
  end

  def from_milliliter(volume_pair, :milliliter = unit) do
    {unit, get_volume(volume_pair)}
  end

  def from_milliliter(volume_pair, :cup = unit) do
    {unit, get_volume(volume_pair) / @conversion_table[unit]}
  end

  def from_milliliter(volume_pair, :fluid_ounce = unit) do
    {unit, get_volume(volume_pair) / @conversion_table[unit]}
  end

  def from_milliliter(volume_pair, :teaspoon = unit) do
    {unit, get_volume(volume_pair) / @conversion_table[unit]}
  end

  def from_milliliter(volume_pair, :tablespoon = unit) do
    {unit, get_volume(volume_pair) / @conversion_table[unit]}
  end

  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
