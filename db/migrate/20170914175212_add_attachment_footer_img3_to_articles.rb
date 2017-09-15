class AddAttachmentFooterImg3ToArticles < ActiveRecord::Migration[5.1]
  def self.up
    change_table :articles do |t|
      t.attachment :footer_img3
    end
  end

  def self.down
    remove_attachment :articles, :footer_img3
  end
end
