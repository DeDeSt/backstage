class CreateCourseOptions < ActiveRecord::Migration
  def change
    create_table :course_options do |t|
      t.string :name, :null => false, :default => ''
      t.integer :duration
      t.integer :hours
      t.integer :lessons
      t.decimal :price_uah, :precision => 8, :scale => 2
      t.decimal :price_usd, :precision => 8, :scale => 2
      t.references :course

      t.timestamps
    end
    add_index :course_options, :course_id
  end
end
