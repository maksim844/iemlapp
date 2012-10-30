# encoding: utf-8

ActiveAdmin.register Faculty do
  menu  :label => "Факультеты", :priority=>1, :parent=>"Основные разделы"
  index do
      column :id
      column "Название", :title
      default_actions
  end
  form :html => { :multiple => true  } do |f|
    f.inputs 'Факультеты' do
      f.input :title, :label => 'Титл'
    
       f.buttons
    end
  end
  controller do
    def show
      flash[:notice] = "Успешно =)"
      redirect_to admin_faculties_path
    end
  end
end
