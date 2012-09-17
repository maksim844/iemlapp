class Form < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title
  has_many :rules
end
