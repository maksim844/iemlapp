class Rule < ActiveRecord::Base
  attr_accessible :filial_id,  :faculty_id, :course_id, :form_id, :bakalavriat_id, :group_id, :summ, :summ_semestr
  belongs_to :bakalavriat
  belongs_to :course
  belongs_to :faculty
  belongs_to :form
  belongs_to :filial
end
