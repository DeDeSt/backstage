class CreateCourseBlocks < ActiveRecord::Migration
  def change
    create_table :course_blocks do |t|
      t.string :name, :null => false, :default => ''
      t.text :text
      t.references :course

      t.timestamps
    end
    add_index :course_blocks, :course_id
  end
end
