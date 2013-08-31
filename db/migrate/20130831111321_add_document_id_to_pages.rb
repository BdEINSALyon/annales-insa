class AddDocumentIdToPages < ActiveRecord::Migration
  def change
    add_column :pages, :document_id, :integer
  end
end
