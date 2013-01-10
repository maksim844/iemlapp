# encoding: utf-8

ActiveAdmin.register Education do
  menu  :label => "Тип образования", :priority=>1
  index do
      column :id
      column "Тип образования", :title
      column "Сортировка", :sort
      default_actions
  end
  form :html => { :multiple => true  } do |f|
    f.inputs 'Образование' do
      f.input :title, :label => 'Тип образования'
      f.input :sort, :label => 'Сортировка'
       f.buttons
    end
  end
  controller do
    def show
      flash[:notice] = "Успешно =)"
      redirect_to admin_educations_path
    end
  end
end
