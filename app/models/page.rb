class Page < ActiveRecord::Base
  attr_accessible :text, :uri, :filial_id
  belongs_to :filial
end
