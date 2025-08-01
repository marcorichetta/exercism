defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter({:cup, volume} = volume_pair) do
    {:milliliter, KitchenCalculator.get_volume(volume_pair) * 240}
  end

  def to_milliliter({:milliliter, volume} = volume_pair) do
    {:milliliter, KitchenCalculator.get_volume(volume_pair) * 1}
  end

  def to_milliliter({:fluid_ounce, volume} = volume_pair) do
    {:milliliter, KitchenCalculator.get_volume(volume_pair) * 30}
  end

  def to_milliliter({:teaspoon, volume} = volume_pair) do
    {:milliliter, KitchenCalculator.get_volume(volume_pair) * 5}
  end

  def to_milliliter({:tablespoon, volume} = volume_pair) do
    {:milliliter, KitchenCalculator.get_volume(volume_pair) * 15}
  end

  def from_milliliter(volume_pair, :milliliter = unit) do
    {unit, KitchenCalculator.get_volume(volume_pair)}
  end

  def from_milliliter(volume_pair, :fluid_ounce = unit) do
    {unit, KitchenCalculator.get_volume(volume_pair) / 30}
  end

  def from_milliliter(volume_pair, :teaspoon = unit) do
    {unit, KitchenCalculator.get_volume(volume_pair) / 5}
  end

  def from_milliliter(volume_pair, :tablespoon = unit) do
    {unit, KitchenCalculator.get_volume(volume_pair) / 15}
  end

  def from_milliliter(volume_pair, :cup = unit) do
    {unit, KitchenCalculator.get_volume(volume_pair) / 240}
  end

  def convert(volume_pair, unit) do
    KitchenCalculator.from_milliliter(KitchenCalculator.to_milliliter(volume_pair), unit)
  end
end
