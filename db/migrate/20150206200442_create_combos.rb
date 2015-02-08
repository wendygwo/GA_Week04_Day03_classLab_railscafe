class CreateCombos < ActiveRecord::Migration
  def change
    create_table :combos do |t|
      t.string :cname
      t.float :price

      t.timestamps
    end
  end
end
