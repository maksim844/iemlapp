# encoding: utf-8

ActiveAdmin.register Rule do
  menu  :label => false#"Правила подсчета стоимости"
  index do
      column :id
      column "Образование", :education
      column "Факультет", :faculty
      column "Школьная база", :class_id
      column "Форма обучения", :form
      column "Специальность", :special
      column "Курс", :course_id
      column "Направление", :bakalavriat
      column "Направление", :bakalavriat_aspirant
      column "Год обучения", :year_id
      column "Стоимость за семестр", :summ_semestr
      default_actions
  end
  form :html => { :multiple => true  } do |f|
    f.inputs 'Правила подсчета скидки' do
      f.input :education, :label => 'Образование'
      arr0 = Hash["9 классов"=>9,"11 классов"=>11 ]
      f.input :class_id, :as => :select, :collection => arr0, :label => 'Школьная база' 
      f.input :faculty, :label => 'Факультет'
      f.input :form, :label => 'Форма обучения'
      f.input :special, :label => 'Специальность'
      arr1 = Hash["1 курс"=>1,"2 курс"=>2,"3 курс"=>3,"4 курс"=>4,"5 курс"=>5,"6 курс"=>6 ]
      f.input :course_id, :as => :select, :collection => arr1, :label => 'Курс' 
      f.input :bakalavriat, :label => 'Направления для студентов'
      f.input :bakalavriat_aspirant, :label => 'Направления для аспирантов'
      arr2 = Hash["1994"=>1994]
      i=1994; (Time.now.year-1994).to_i.times do |t| i+=1
        arr2[i] = [t=>i]
      end
      f.input :year_id, :as => :select, :collection => arr2, :label => 'Год обучения' 
      f.input :summ_semestr, :label => 'Стоимость за семестр (например 20.000)'
      f.buttons
    end
  end
  controller do
      def show
        flash[:notice] = "Успешно =)"
        redirect_to admin_rules_path
      end
    end
  end
