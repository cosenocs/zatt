class Receipt < ApplicationRecord

  belongs_to :user
  belongs_to :attraction

  ATTRACTIONS = Attraction.pluck(:name)
  CYCLES = [1, 2]

  def change
    (cash_pay + card_pay) - total_price
  end

end
