class AddAttachmentPictureToCourseBlocks < ActiveRecord::Migration
  def self.up
    change_table :course_blocks do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :course_blocks, :picture
  end
end
