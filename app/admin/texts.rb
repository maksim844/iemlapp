# encoding: utf-8

ActiveAdmin.register Page do
  menu  :label => "Текст ошибки"
  index do
      column :id
      column "Текст" do |t|
        t.text.html_safe
       end
      default_actions
  end
  form :html => { :multiple => true  } do |f|
    f.inputs 'Текст ошибки' do
      f.input :text, :label => 'Текст'
       f.buttons
    end
  end
 
end
