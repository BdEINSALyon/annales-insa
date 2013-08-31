class DocumentsController < ApplicationController
	before_action :authenticate_user!

	# Index of the final application
	def index		
	end

	def show
		@document = Document.find(params[:id])
	end

	def new
		@document = Document.new
	end

	def create
		@document = document.new(document_params)
		if @document.save
			flash[:info] = "New document sent"
			redirect_to @document
		else
			render :new
		end
	end

	def update
		@document = DOcument.find(params[:id])
		if @document.updates_attributes(document_params)
			flash[:info] = "Document updated"
			redirect_to @document
		end
	end

	def destroy
		@document = Document.find(params[:id])
		@document.destroy

		redirect_to root_path
	end
end
