class Filial < ActiveRecord::Base
    attr_accessible :title
    has_many :rules
end
