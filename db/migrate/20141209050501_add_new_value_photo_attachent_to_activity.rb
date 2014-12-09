class AddNewValuePhotoAttachentToActivity < ActiveRecord::Migration
  def self.up
    change_table :activities do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :activities, :photo
  end
end
