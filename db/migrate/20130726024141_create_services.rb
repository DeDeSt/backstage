class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.text :details
      t.references :hairstyle, index: true

      t.timestamps
    end
  end
end
