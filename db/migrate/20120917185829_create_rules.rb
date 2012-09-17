class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.integer :faculty_id
      t.integer :course_id
      t.integer :form_id
      t.integer :bakalavriat_id
      t.integer :group_id
      t.string :summ
      t.string :summ_semestr
      t.timestamps
    end
  end
end
