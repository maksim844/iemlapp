# encoding: utf-8

ActiveAdmin.register Rule do
  menu  :label => "Правила подсчета стоимости"
  index do
      column :id
      column "Образование", :education
      column "Факультет", :faculty
      column "Форма обучения", :form
      column "Специальность", :special
      column "Курс", :course_id
      column "Направление", :bakalavriat
      column "Год обучения", :year_id
      column "Стоимость за семестр", :summ_semestr
      default_actions
  end
  form :html => { :multiple => true  } do |f|
    f.inputs 'Правила подсчета скидки' do
      f.input :education, :label => 'Образование'
      f.input :faculty, :label => 'Факультет'
      f.input :form, :label => 'Форма обучения'
      f.input :special, :label => 'Специальность'
      arr = Hash["1 курс"=>1,"2 курс"=>2,"3 курс"=>3,"4 курс"=>4,"5 курс"=>5 ]
      f.input :course_id, :as => :select, :collection => arr, :label => 'Курс' 
      f.input :bakalavriat, :label => 'Направление'
      arr2 = Hash["1994"=>1994]
      i=1994; (Time.now.year-1994).to_i.times do |t| i+=1
        arr2[i] = [t=>i]
      end
      f.input :year_id, :as => :select, :collection => arr2, :label => 'Год обучения' 
      f.input :summ_semestr, :label => 'Стоимость за семестр (например 20.000)'
      f.buttons
    end
  end
 
end
