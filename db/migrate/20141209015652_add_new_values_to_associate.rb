class AddNewValuesToAssociate < ActiveRecord::Migration
  def change
    add_column :associateds, :city, :string
    			
  end
end
