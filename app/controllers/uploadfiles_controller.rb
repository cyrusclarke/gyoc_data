class UploadfilesController < ApplicationController
  before_action :authenticate_user!	
	def new
		@uploadfile = Uploadfile.new
	end

	
end
