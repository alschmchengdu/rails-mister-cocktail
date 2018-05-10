class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true

  # private

  # def check_for_doses
  #   if doses.count > 0
  #     errors.add_to_base("cannot delete ingredient while doses exist")
  #     return false
  #   end
  # end
end
