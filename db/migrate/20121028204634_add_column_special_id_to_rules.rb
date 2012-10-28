class AddColumnSpecialIdToRules < ActiveRecord::Migration
  def change
    remove_column :rules, :special_id
    add_column :rules, :special_id, :integer
  end
end
