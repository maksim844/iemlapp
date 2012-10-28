class CreateFormsTypes < ActiveRecord::Migration
  def change
    create_table :forms_types do |t|
      t.string :title
      t.timestamps
    end
  end
end
