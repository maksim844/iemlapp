class Rule < ActiveRecord::Base
  attr_accessible  :faculty_id, :course_id, :form_id, :bakalavriat_id, 
                  :group_id, :summ, :summ_semestr, :education_id
  belongs_to :bakalavriat
  belongs_to :course
  belongs_to :faculty
  belongs_to :form
  belongs_to :education
  
end
