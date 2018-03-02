class Page < ApplicationRecord
  # 上傳附件檔案
  mount_uploader :attachment, AttachmentUploader
  
  validates_presence_of :title, :classify, :context
end
