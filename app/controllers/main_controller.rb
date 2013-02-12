# encoding: utf-8

class MainController < ApplicationController
  def index
    @filial_id = params[:filial_id].nil? ? 1 : params[:filial_id]
    @facultys = Faculty.all
    @educations = Education.find(:all, :order => "sort asc")
    
  end 
  def summa
    @filial_id = params[:filial_id].nil? ? 1 : params[:filial_id]
    @summ = RuleUpload.where(
      :filial_id=> !params[:summ][:filial_id].blank? ? params[:summ][:filial_id] : nil, 
      :education=> params[:education].to_s, 
      :faculty => !params[:faculty][:id].blank? ? params[:faculty][:id] : nil, 
      :form => !params[:form][:id].blank? ? params[:form][:id] : nil,
      :bakalavriat => !params[:bakalavriat][:id].blank? ? params[:bakalavriat][:id] : nil,
      :course_id => params[:course][:id], 
      #:year_id => !params[:year][:id].blank? ? params[:year][:id] : 0,
      :special => !params[:special].blank? ? params[:special] : nil,
      :class_id => !params[:class][:id].blank? ? params[:class][:id] : 0
      ).first
      
    @notice = Page.find_by_uri_and_filial_id(:notice, @filial_id) ? Page.find_by_uri_and_filial_id(:notice, @filial_id).text : not_found
    @error = Page.find_by_uri_and_filial_id(:error, @filial_id) ? Page.find_by_uri_and_filial_id(:error, @filial_id).text : not_found
  end
  def getBakalavriatByFaculty
    @list = RuleUpload.where("bakalavriat != '' and  faculty = ?", params[:faculty]).group(:bakalavriat)
  end
  def getBakalavriatByClass
    @list = RuleUpload.where("bakalavriat != '' and  class_id  = ?", params[:klass]).group(:bakalavriat)
  end
  def autocomplit_faculty
    if params[:term]
      like= "%".concat(params[:term].concat("%"))
      places = RuleUpload.where("faculty like ?", like).group("faculty")
    else
      places = RuleUpload.all
    end
    list = places.map {|u| Hash[ id: u.id, label: u.faculty, name: u.faculty]}
    render json: list
  end
  def autocomplit_special
    if params[:term]
      like= "%".concat(params[:term].concat("%"))
      places = RuleUpload.where("special like ?", like).group("special")
    else
      places = RuleUpload.all
    end
    list = places.map {|u| Hash[ id: u.id, label: u.special, name: u.special]}
    render json: list
  end
  def autocomplit_form
    if params[:term]
      like= "%".concat(params[:term].concat("%"))
      places = RuleUpload.where("form like ?", like).group("form")
    else
      places = RuleUpload.all
    end
    list = places.map {|u| Hash[ id: u.id, label: u.form, name: u.form]}
    render json: list
  end
end
