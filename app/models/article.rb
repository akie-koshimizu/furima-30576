class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  with_options presence: true do
    validates :category_id
    validates :condition_id
    validates :ship_base_id
    validates :ship_city_id
    validates :ship_date_id
  end

  validates :genre_id, numericality: { other_than: 1 }
end
