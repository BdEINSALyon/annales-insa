class Document < ActiveRecord::Base
  include RMagick

	before_save :default_value
	after_save :create_pages

	belongs_to :category
	has_many :pages
	mount_uploader :original_file, DocumentUploader

	DEPARTEMENT = ['PC', 'BIO', 'BIM', 'GCU', 'GE', 'GEN', 'GMC', 'GMD', 'GMPP', 'GI', 'IF', 'TC']
	validates_inclusion_of :departement, in: DEPARTEMENT
	validates_presence_of :title, :scholar_year, :original_file, :departement, :publication_year, :validated

	private

	def default_value
		self.validated ||= false
	end

	def create_pages
		pdf
	end
end
