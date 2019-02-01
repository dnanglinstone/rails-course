class CreatePlates < ActiveRecord::Migration[5.2]
  def change
    create_table :plates do |t|
      t.string :protein
      t.string :side
      t.string :vegetable
      t.timestamps
    end
  end
end
