class MainController < ApplicationController
  def index
    @facultys = Faculty.all
  end 
  def summa
    @summ = Rule.where(
      :education_id=> !params[:education].blank? ? params[:education] : nil, 
      :faculty_id => !params[:faculty][:id].blank? ? params[:faculty][:id] : nil, 
      :form_id => !params[:form][:id].blank? ? params[:form][:id] : nil,
      :bakalavriat_id => !params[:bakalavriat][:id].blank? ? params[:bakalavriat][:id] : nil,
      :bakalavriat_aspirant_id => !params[:bakalavriat_aspirant][:id].blank? ? params[:bakalavriat_aspirant][:id] : nil,
      :course_id => !params[:course][:id].blank? ? params[:course][:id] : nil,
      :year_id => !params[:year][:id].blank? ? params[:year][:id] : nil,
      :special_id => !params[:special][:id].blank? ? params[:special][:id] : nil,
      :class_id => !params[:class][:id].blank? ? params[:class][:id] : nil
      ).first
  end
    
end
