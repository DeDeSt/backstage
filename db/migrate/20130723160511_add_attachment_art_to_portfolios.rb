class AddAttachmentArtToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.attachment :art
    end
  end

  def self.down
    drop_attached_file :portfolios, :art
  end
end
