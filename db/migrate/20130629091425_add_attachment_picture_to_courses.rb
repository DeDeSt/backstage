class AddAttachmentPictureToCourses < ActiveRecord::Migration
  def self.up
    change_table :courses do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :courses, :picture
  end
end
