class EditToRules < ActiveRecord::Migration
  def up
      remove_column :rules, :faculty_id
      remove_column :rules, :course_id
      remove_column :rules, :form_id
      remove_column :rules, :bakalavriat_id
      remove_column :rules, :group_id
      remove_column :rules, :education_id
      
      add_column :rules, :faculty_id, :integer, :default=>0
      add_column :rules, :course_id,  :integer, :default=>0
      add_column :rules, :form_id,  :integer, :default=>0
      add_column :rules, :bakalavriat_id, :integer,  :default=>0
      add_column :rules, :group_id,  :integer, :default=>0
      add_column :rules, :education_id,  :integer, :default=>0
  end

  def down
    
  end
end
