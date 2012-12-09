# encoding: utf-8

ActiveAdmin.register RuleUpload do
  menu :label => "Загрузка правил"
  form :html => { :multiple => true  } do |f|
    f.inputs 'DishesTypes' do
      f.input :filial, :label => "Место"
      f.input :xls, :as => :file, :multiple => true, :label => 'XLS'.html_safe
      f.buttons
    end
  end
  index do
      h3 "<a href='/admin/rule_upload/truncate'>очистить все</a>".html_safe
      column :id
      column "Филиал", :filial
      column "Образование", :education
      column "Факультет", :faculty
      column "Школьная база", :class_id
      column "Форма обучения", :form
      column "Специальность", :special
      column "Курс", :course_id
      column "Направление", :bakalavriat
      column "Год обучения", :year_id
      column "Стоимость за семестр", :summ_semestr
      default_actions
  end
  controller do
    def show
      flash[:notice] = "Успешно =)"
      redirect_to admin_rule_uploads_path
    end
    def truncate
     if RuleUpload.delete_all
       redirect_to admin_rule_uploads_path
     end
    end
  end
 
end
