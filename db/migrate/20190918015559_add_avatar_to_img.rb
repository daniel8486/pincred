class AddAvatarToImg < ActiveRecord::Migration[5.2]
  def change
    add_column :imgs, :avatar, :string
  end
end
