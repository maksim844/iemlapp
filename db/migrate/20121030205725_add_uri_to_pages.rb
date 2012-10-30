class AddUriToPages < ActiveRecord::Migration
  def change
    add_column :pages, :uri, :string
  end
end
