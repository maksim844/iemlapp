class Special < ActiveRecord::Base
  attr_accessible :title
  has_many :rules
  
  default_scope order('title ASC')
end
