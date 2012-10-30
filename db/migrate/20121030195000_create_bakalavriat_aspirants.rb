class CreateBakalavriatAspirants < ActiveRecord::Migration
  def change
    create_table :bakalavriat_aspirants do |t|
      t.string :title
      t.timestamps
    end
  end
end
