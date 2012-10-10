class MainController < ApplicationController
  def index
    @facultys = Faculty.all
  end 
  def summa
    @summ = Rule.where(
      :education_id=>params[:education][:education_id], 
      :faculty_id => params[:faculty], 
      :form_id => params[:form][:form_id],
      :bakalavriat_id => params[:bakalavriat][:bakalavriat_id],
      :course_id => params[:course][:course_id]
      ).first
  end
    
end
