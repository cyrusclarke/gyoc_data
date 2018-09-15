class UploadfilesController < ApplicationController
  before_action :authenticate_user!	
	def new
		@uploadfile = Uploadfile.new
	end

	def create
		@uploadfile = current_user.uploadfiles.create(uploadfile_params.merge(user: current_user))
		redirect_to uploadfile_path(@uploadfile)
	end

	def show
		@uploadfile = Uploadfile.find(params[:id])
	end

	private

	def uploadfile_params
	    params.require(:uploadfile).permit(:title, :subtitle, :video)
	end
end