class AddSpecialIdToRules < ActiveRecord::Migration
  def change
    add_column :rules, :special_id, :string
  end
end
