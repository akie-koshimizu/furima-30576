class Item < ApplicationRecord
  belongs_to :user
  has_one :buyer
  has_one_attached :image

  with_options presence: true do
    validates :product
    validates :description
    validates :category_id
    validates :condition_id
    validates :ship_base_id
    validates :ship_city_id
    validates :ship_date_id
    validates :price
  end

end
