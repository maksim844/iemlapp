class Faculty < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title
  has_many :rules
  
  default_scope order('title ASC')
end
