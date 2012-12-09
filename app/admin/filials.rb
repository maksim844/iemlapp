# encoding: utf-8

ActiveAdmin.register Filial do
  menu  :label => "Филиалы", :priority=>1
  index do
      column :id
      column "Филиал", :title
      default_actions
  end
  form :html => { :multiple => true  } do |f|
    f.inputs 'Филиалы' do
      f.input :title, :label => 'Филиал'
      f.buttons
    end
  end
  controller do
    def show
      flash[:notice] = "Успешно =)"
      redirect_to admin_filials_path
    end
  end
end
