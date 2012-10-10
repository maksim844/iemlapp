# encoding: utf-8

ActiveAdmin.register Education do
  menu  :label => "Образование", :priority=>1
  index do
      column :id
      column "Тип образования", :title
      default_actions
  end
  form :html => { :multiple => true  } do |f|
    f.inputs 'Образование' do
      f.input :title, :label => 'Тип образования'
       f.buttons
    end
  end
 
end
