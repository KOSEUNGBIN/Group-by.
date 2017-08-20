class Group < ApplicationRecord

  mount_uploader :groupProfile,  GroupImageUploader
  mount_uploader :groupCover, GroupImageUploader

  has_many :contents
  has_and_belongs_to_many :users, -> { distinct }
end
