class AddNewAttachmentToPublications < ActiveRecord::Migration
  def self.up
    change_table :Publications do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :Publications, :photo
  end
end
