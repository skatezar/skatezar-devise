class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :category
      t.string :brand
      t.string :size
      t.string :condition
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
