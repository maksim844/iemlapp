class AddEducationIdToRules < ActiveRecord::Migration
  def change
    add_column :rules, :education_id, :integer
  end
end
