class CreateCourseOptions < ActiveRecord::Migration
  def change
    create_table :course_options do |t|
      t.string :name
      t.integer :duration
      t.decimal :price, :precision => 8, :scale => 2
      t.references :course

      t.timestamps
    end
    add_index :course_options, :course_id
  end
end
