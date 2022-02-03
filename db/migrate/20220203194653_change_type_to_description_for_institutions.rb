class ChangeTypeToDescriptionForInstitutions < ActiveRecord::Migration[6.1]
  def change
    rename_column :institutions, :type, :description
    change_column :institutions, :description, :text
  end
end
