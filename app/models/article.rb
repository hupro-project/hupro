class Article < ApplicationRecord
  # photoをattachファイルとする。stylesで画像サイズを定義できる
has_attached_file :header_img, styles: { medium: "300x300>", thumb: "100x100>" }
has_attached_file :footer_img1, styles: { medium: "300x300>", thumb: "100x100>" }
has_attached_file :footer_img2, styles: { medium: "300x300>", thumb: "100x100>" }
has_attached_file :footer_img3, styles: { medium: "300x300>", thumb: "100x100>" }
has_attached_file :interview_img, styles: { medium: "300x300>", thumb: "100x100>" }

# ファイルの拡張子を指定（これがないとエラーが発生する）
validates_attachment :header_img, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
validates_attachment :footer_img1, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
validates_attachment :footer_img3, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
validates_attachment :footer_img2, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
validates_attachment :phinterview_imgoto, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
