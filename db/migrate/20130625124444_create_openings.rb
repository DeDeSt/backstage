class CreateOpenings < ActiveRecord::Migration
  def change
    create_table :openings do |t|
      t.string :opening_day, :null => false, :default => ''
      t.string :opening_from, :null => false, :default => ''
      t.string :opening_to, :null => false, :default => ''

      t.timestamps
    end
  end
end
