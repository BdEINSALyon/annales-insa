class DocumentsController < ApplicationController
	before_action :authenticate_user!

	# Index of the final application
	def index		
	end

	def new
		@document = Document.new
	end
	
	def show
		@document = Document.find(params[:id])
	end

	def create
		@document = Document.new(document_params)

		if @document.save
			flash[:info] = "New document sent"
			redirect_to root_path
		else
			render :new
		end
	end

	def edit
		@document = Document.find(params[:id])
	end

	def update
		@document = Document.find(params[:id])
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

	private
  def document_params
    params.require(:document).permit(:title, :scholar_year, :publication_year, :departement, :original_file)
  end
end
