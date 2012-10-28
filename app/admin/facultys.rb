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
      f.input :education, :as => :check_boxes do |a|
        a.inputs  do
          a.input :education, :label => 'Учавствует в '
        end
      end
       f.buttons
    end
  end
 
end
