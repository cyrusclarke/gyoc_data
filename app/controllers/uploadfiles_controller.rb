class UploadfilesController < ApplicationController
  before_action :authenticate_user!	
	def new
		@uploadfile = Uploadfile.new
	end

	def create
		@uploadfile = current_user.uploadfiles.create(uploadfile_params)
		redirect_to uploadfile_path(@uploadfile)
	end

	private

	def uploadfile_params
	    params.require(:uploadfile).permit(:title, :subtitle, :video)
	end
end