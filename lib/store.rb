class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :must_carry_at_least_one_of_mens_and_womens_apparel

  def must_carry_at_least_one_of_mens_and_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(
        :mens_apparel,
        "Store must carry at least one of men's and women's apparel"
      )
      errors.add(
        :womens_apparel,
        "Store must carry at least one of men's and women's apparel"
      )
    end
  end
end
