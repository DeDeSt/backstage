class CreateOpenings < ActiveRecord::Migration
  def change
    create_table :openings do |t|
      t.string :day
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end
