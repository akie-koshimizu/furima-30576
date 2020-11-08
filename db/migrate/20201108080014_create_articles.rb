class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.integer :category_id,       null: false
      t.integer :condition_id,      null: false
      t.integer :ship_base_id,      null: false
      t.integer :ship_city_id,      null: false
      t.integer :ship_date_id,      null: false
      t.integer :genre_id,          null: false
      t.timestamps
    end
  end
end
