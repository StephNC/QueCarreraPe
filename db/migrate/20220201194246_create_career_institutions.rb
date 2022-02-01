class CreateCareerInstitutions < ActiveRecord::Migration[6.1]
  def change
    create_table :career_institutions do |t|
      t.references :career, null: false, foreign_key: true
      t.references :institution, null: false, foreign_key: true

      t.timestamps
    end
  end
end
