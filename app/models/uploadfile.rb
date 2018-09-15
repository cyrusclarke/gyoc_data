class Uploadfile < ApplicationRecord
	belongs_to :user
	mount_uploader :genericfiles, GenericfilesUploader
end
