class AddYearIdToRules < ActiveRecord::Migration
  def change
    add_column :rules, :year_id, :integer
  end
end
