class Ticket < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  belongs_to :project
  has_many :attachments, dependent: :destroy

  accepts_nested_attributes_for :attachments, reject_if: :all_blank

  validates :name, presence: true
  validates :description, presence: true

end
