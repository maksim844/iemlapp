class MainController < ApplicationController
  def index
    @facultys = Faculty.all
  end 
  def summa
    @summ = Rule.where(:faculty_id => params[:faculty], :form_id => params[:form][:form_id]).first
  end
    
end
