class CreateBakalavriats < ActiveRecord::Migration
  def change
    create_table :bakalavriats do |t|
      t.string :title
      t.timestamps
    end
  end
end
