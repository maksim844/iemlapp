class CreateRuleUploads < ActiveRecord::Migration
  def change
    create_table :rule_uploads do |t|
      t.string :filial_id
      t.string :education
      t.string :faculty
      t.string :class_id
      t.string :form
      t.string :special
      t.string :course_id
      t.string :bakalavriat
      t.string :year_id
      t.string :summ_semestr
      t.string :xls_file_name
      t.timestamps
    end
  end
end
