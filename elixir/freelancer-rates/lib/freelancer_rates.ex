defmodule FreelancerRates do
  @monthly_billable_days 22

  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * (discount / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    total_monthly_rate = daily_rate(hourly_rate) * @monthly_billable_days
    ceil(apply_discount(total_monthly_rate, discount))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate_with_discount = apply_discount(daily_rate(hourly_rate), discount)
    Float.floor(budget / daily_rate_with_discount, 1)
  end
end
