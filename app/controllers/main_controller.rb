class MainController < ApplicationController
  def index
    @facultys = Faculty.all
  end 
  def summa
    @summ = Rule.where(
      :education_id=> !params[:education][:education_id].blank? ? params[:education][:education_id] : nil, 
      :faculty_id => !params[:faculty].blank? ? params[:faculty] : nil, 
      :form_id => !params[:form][:form_id].blank? ? params[:form][:form_id] : nil,
      :bakalavriat_id => !params[:bakalavriat][:bakalavriat_id].blank? ? params[:bakalavriat][:bakalavriat_id] : nil,
      :course_id => !params[:course][:course_id].blank? ? params[:course][:course_id] : nil
      ).first
  end
    
end
