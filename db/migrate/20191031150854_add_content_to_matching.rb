class AddContentToMatching < ActiveRecord::Migration[5.2]
  def change
    add_column :matchings, :content, :string
  end
end
