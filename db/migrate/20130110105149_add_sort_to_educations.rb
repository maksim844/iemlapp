class AddSortToEducations < ActiveRecord::Migration
  def change
    add_column :educations, :sort, :integer, :default => 0
  end
end
