class CreateInstitutions < ActiveRecord::Migration[6.1]
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.string :email
      t.text :url
      t.string :type

      t.timestamps
    end
  end
end
