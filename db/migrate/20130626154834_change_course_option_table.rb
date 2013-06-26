class ChangeCourseOptionTable < ActiveRecord::Migration
  def up
    rename_column :course_options, :price, :price_usd
    add_column :course_options, :price_uah, :decimal, :precision => 8, :scale => 2
    add_column :course_options, :hours, :integer
    add_column :course_options, :lessons, :integer
  end

  def down
    rename_column :course_options, :price_usd, :price
    remove_column :course_options, :price_uah
    remove_column :course_options, :hours
    remove_column :course_options, :lessons
  end
end
