class AddAvatarToBanner < ActiveRecord::Migration[5.2]
  def change
    add_column :banners, :avatar, :string
  end
end
