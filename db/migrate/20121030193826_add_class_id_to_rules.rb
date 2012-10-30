class AddClassIdToRules < ActiveRecord::Migration
  def change
    add_column :rules, :class_id, :integer
  end
end
