class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :description_name
      t.string :rg
      t.string :cpf
      t.string :email
      t.string :phone
      t.string :address
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
