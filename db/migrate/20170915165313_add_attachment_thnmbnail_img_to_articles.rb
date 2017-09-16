class AddAttachmentThnmbnailImgToArticles < ActiveRecord::Migration[5.1]
  def self.up
    change_table :articles do |t|
      t.attachment :thumbnail_img
    end
  end

  def self.down
    remove_attachment :articles, :thumbnail_img
  end
end
