# encoding: utf-8

ActiveAdmin.register Bakalavriat do
  menu  :label => "Бакалавриат"
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
