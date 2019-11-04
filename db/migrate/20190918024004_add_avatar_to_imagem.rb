class AddAvatarToImagem < ActiveRecord::Migration[5.2]
  def change
    add_column :imagems, :avatar, :string
  end
end
