class AddNewValuesEmployeToAssociateds < ActiveRecord::Migration
  def change
    add_column :associateds, :employementStatus, :string
  end
end
