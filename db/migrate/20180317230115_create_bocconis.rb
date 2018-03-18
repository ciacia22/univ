class CreateBocconis < ActiveRecord::Migration
  def change
    create_table :bocconis do |t|
      t.string :titolo
      t.text :description
      t.decimal :price
      t.attachment :cover

      t.timestamps null: false
    end
  end
end
