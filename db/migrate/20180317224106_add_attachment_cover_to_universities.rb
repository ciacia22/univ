class AddAttachmentCoverToUniversities < ActiveRecord::Migration
  def self.up
    change_table :universities do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :universities, :cover
  end
end
