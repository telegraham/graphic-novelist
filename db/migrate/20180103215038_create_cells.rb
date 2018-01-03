class CreateCells < ActiveRecord::Migration[5.1]
  def change
    create_table :cells do |t|
      t.belongs_to :strip, index: true, foreign_key: true
      t.string :image_url, null: false
      t.integer :sort_order, null: false
      t.bool :framed, null: false
      t.timestamps
    end
  end
end
