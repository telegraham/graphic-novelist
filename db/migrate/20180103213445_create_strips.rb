class CreateStrips < ActiveRecord::Migration[5.1]
  def change
    create_table :strips do |t|
      t.string :title, null: false
      t.string :stub, null: false
      t.boolean :published, null: false
      t.datetime :published_at
      t.timestamps
    end
  end
end
