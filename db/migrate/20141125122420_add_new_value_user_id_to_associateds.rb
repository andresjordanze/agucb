class AddNewValueUserIdToAssociateds < ActiveRecord::Migration
  def change
    add_column :associateds, :userId, :Intreger
  end
end
