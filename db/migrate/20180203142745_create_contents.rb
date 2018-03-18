class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :titolo
      t.text :descrizione
      t.decimal :prezzo

      t.timestamps null: false
    end
  end
end
