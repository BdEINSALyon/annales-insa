class Document < ActiveRecord::Base

	belongs_to :category
	has_many :pages
	mount_uploader :original_file, DocumentUploader

	DEPARTEMENT = ['PC', 'BIO', 'BIM', 'GCU', 'GE', 'GEN', 'GMC', 'GMD', 'GMPP', 'GI', 'IF', 'TC']
	validates_inclusion_of :departement, in: DEPARTEMENT
	validates_presence_of :title, :scholar_year, :original_file, :departement, :publication_year
end
