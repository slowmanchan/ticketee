class Ticket < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  belongs_to :project

  validates :name, presence: true
  validates :description, presence: true

  mount_uploader :attachment, AttachmentUploader
end
