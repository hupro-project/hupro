class AddAttachmentInterviewToArticles < ActiveRecord::Migration[5.1]
  def self.up
    change_table :articles do |t|
      t.attachment :interview
    end
  end

  def self.down
    remove_attachment :articles, :interview
  end
end
