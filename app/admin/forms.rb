# encoding: utf-8

ActiveAdmin.register Form do
  menu  :label => "Формы обучения", :parent=>"Основные разделы"
  index do
      column :id
      column "Название", :title
      default_actions
  end
  form :html => { :multiple => true  } do |f|
    f.inputs 'Формы обучения' do
      f.input :title, :label => 'Титл'
       f.buttons
    end
  end
 
end
