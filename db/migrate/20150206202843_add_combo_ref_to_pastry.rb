class AddComboRefToPastry < ActiveRecord::Migration
  def change
    add_reference :pastries, :combo, index: true
  end
end
