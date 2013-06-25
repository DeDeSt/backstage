class CreateCourseBlocks < ActiveRecord::Migration
  def change
    create_table :course_blocks do |t|
      t.string :name
      t.text :text
      t.string :picture
      t.references :course

      t.timestamps
    end
    add_index :course_blocks, :course_id
  end
end
