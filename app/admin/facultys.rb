# encoding: utf-8

ActiveAdmin.register Faculty do
  menu  :label => "Факультеты", :priority=>1
  index do
      column :id
      column "Название", :title
      default_actions
  end
  form :html => { :multiple => true  } do |f|
    f.inputs 'Объекты' do
      f.input :title, :label => 'Титл'
       f.buttons
    end
  end
 
end
