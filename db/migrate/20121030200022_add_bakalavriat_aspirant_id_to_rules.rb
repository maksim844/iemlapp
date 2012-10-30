class AddBakalavriatAspirantIdToRules < ActiveRecord::Migration
  def change
    add_column :rules, :bakalavriat_aspirant_id, :integer
  end
end
