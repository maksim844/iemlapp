class MainController < ApplicationController
  def index
    @facultys = Faculty.all
  end 
  def summa
    @summ = Rule.where(
      :education_id=> !params[:education].blank? ? params[:education] : nil, 
      :faculty_id => !params[:faculty][:faculty_id].blank? ? params[:faculty][:faculty_id] : nil, 
      :form_id => !params[:form][:form_id].blank? ? params[:form][:form_id] : nil,
      :bakalavriat_id => !params[:bakalavriat][:bakalavriat_id].blank? ? params[:bakalavriat][:bakalavriat_id] : nil,
      :course_id => !params[:course][:course_id].blank? ? params[:course][:course_id] : nil,
      :year_id => !params[:year][:year_id].blank? ? params[:year][:year_id] : nil,
      :special_id => !params[:special][:special_id].blank? ? params[:special][:special_id] : nil
      ).first
  end
    
end
