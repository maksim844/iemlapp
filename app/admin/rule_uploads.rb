# encoding: utf-8

ActiveAdmin.register RuleUpload do
  menu :label => "Загрузка правил"
  form :html => { :multiple => true  } do |f|
    f.inputs 'DishesTypes' do
      f.input :filial, :label => "Филиал"
      f.input :xls, :as => :file, :multiple => true, :label => 'XLS'.html_safe
      f.buttons
    end
  end
  index do
      h3 "Групповое удаление:" 
      select(:id=>"truncate_by_id") do
          option "Выберите для удаления", :selected=>:selected
        Filial.all.each do |f|
          option f.title, :value=>f.id
        end       
      end
      br
      h3 link_to("Очистить все правила", truncate_path, :confirm => "Вы действительно хотите удалить все правила?") 
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
      column "Норматив затрат", :normativ_summ
      column "Дофинансирование", :finance_summ
      default_actions
  end
  controller do
    def show
      flash[:notice] = "Успешно =)"
      redirect_to admin_rule_uploads_path
    end
    def truncate
     flash[:notice] = "Успешно очистили=)"
     ActiveRecord::Base.connection.execute("TRUNCATE TABLE rule_uploads")
     redirect_to admin_rule_uploads_path
    end
    def truncate_by_id
      flash[:notice] = "Успешно очистили"
      ActiveRecord::Base.connection.execute("DELETE FROM rule_uploads WHERE filial_id = #{params[:id]}")
      redirect_to admin_rule_uploads_path
    end
  end
 
end
