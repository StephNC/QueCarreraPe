class CreateCareers < ActiveRecord::Migration[6.1]
  def change
    create_table :careers do |t|
      t.string :name
      t.string :area
      t.integer :duration
      t.text :profile
      t.text :description

      t.timestamps
    end
  end
end
