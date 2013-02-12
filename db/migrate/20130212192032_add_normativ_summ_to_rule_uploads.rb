class AddNormativSummToRuleUploads < ActiveRecord::Migration
  def change
    add_column :rule_uploads, :normativ_summ, :string
    add_column :rule_uploads, :finance_summ, :string
    
  end
end
