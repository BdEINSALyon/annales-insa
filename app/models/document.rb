class Document < ActiveRecord::Base

	after_save :create_pages

	belongs_to :category
	has_many :pages, dependent: :destroy
	mount_uploader :original_file, DocumentUploader

	DEPARTEMENT = ['PC', 'BIO', 'BIM', 'GCU', 'GE', 'GEN', 'GMC', 'GMD', 'GMPP', 'GI', 'IF', 'TC']
	validates_inclusion_of :departement, in: DEPARTEMENT
	validates_presence_of :title, :scholar_year, :original_file, :departement, :publication_year

	def create_pages
		Magick::ImageList.new(self.original_file.current_path).each_with_index { |img, i|
		  saved_file = img.write("#{RAILS_ROOT}/public/tmp/#{self.id}/#{i}.jpg") {
		  	self.density = '300'
		  }
		  page = Page.new
		  page.index = i
		  page.image = File.open(saved_file)
		  page.save!
		}
	end
end
