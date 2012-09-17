# encoding: utf-8

ActiveAdmin.register Filial do
  menu  :label => "Филиалы"
  index do
      column :id
      column "Название", :title
      default_actions
  end
  form :html => { :multiple => true  } do |f|
    f.inputs 'Филиалы' do
      f.input :title, :label => 'Титл'
       f.buttons
    end
  end
 
end
