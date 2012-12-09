# encoding: utf-8

ActiveAdmin.register Page do
  menu  :label => "Текст ошибки"
  index do
      column :id
      column "Филиал", :filial
      column "Текст" do |t|
        t.text.html_safe
       end
      column "Тип текста", :uri
      default_actions
  end
  form :html => { :multiple => true  } do |f|
    f.inputs 'Текст ошибки' do
      f.input :filial, :label => 'Филиал'
      f.input :uri, :label => 'Тип'
      f.input :text, :label => 'Текст'
      f.buttons
    end
  end
  controller do
    def show
      flash[:notice] = "Успешно =)"
      redirect_to admin_pages_path
    end
  end
end
