class AddDocumentsToPublications < ActiveRecord::Migration[5.2]
  def change
    add_column :publications, :documents, :json
  end
end
