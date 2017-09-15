class AddAttachmentHeaderImgToArticles < ActiveRecord::Migration[5.1]
  def self.up
    change_table :articles do |t|
      t.attachment :header_img
    end
  end

  def self.down
    remove_attachment :articles, :header_img
  end
end
