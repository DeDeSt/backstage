class RenameColumnsInOpening < ActiveRecord::Migration
  def up
    rename_column :openings, :day, :opening_day
    rename_column :openings, :from, :opening_from
    rename_column :openings, :to, :opening_to
  end

  def down
    rename_column :openings, :opening_day, :day
    rename_column :openings, :opening_from, :from
    rename_column :openings, :opening_to, :to
  end
end
