class AddFilialIdToPages < ActiveRecord::Migration
  def change
    add_column :pages, :filial_id, :integer
  end
end
