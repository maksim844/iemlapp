class CreateV2Rules < ActiveRecord::Migration
  def change
    create_table :v2_rules do |t|

      t.timestamps
    end
  end
end
