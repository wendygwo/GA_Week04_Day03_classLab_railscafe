class AddComboRefToBeverage < ActiveRecord::Migration
  def change
    add_reference :beverages, :combo, index: true
  end
end
