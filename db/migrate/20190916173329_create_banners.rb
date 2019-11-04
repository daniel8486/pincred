class CreateBanners < ActiveRecord::Migration[5.2]
  def change
    create_table :banners do |t|
      t.string :title
      t.text :content
      t.string :image
      t.integer :position

      t.timestamps
    end
  end
end
