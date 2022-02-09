class ChangeTypeToDescriptionForInstitutions < ActiveRecord::Migration[6.1]
  def change

    change_column :institutions, :description, :text
  end
end
