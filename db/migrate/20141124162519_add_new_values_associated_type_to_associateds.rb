class AddNewValuesAssociatedTypeToAssociateds < ActiveRecord::Migration
  def change
    add_column :associateds, :associatedType, :string
  end
end
