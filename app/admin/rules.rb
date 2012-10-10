# encoding: utf-8

ActiveAdmin.register Rule do
  menu  :label => "Правила подсчета стоимости"
  index do
      column :id
      column "Образование", :education
      column "Факультет", :faculty
      column "Форма обучения", :form
      column "Курс", :course
      column "Бакалавриат", :bakalavriat
      column "Полная стоимость обучения",  :summ
      default_actions
  end
  form :html => { :multiple => true  } do |f|
    f.inputs 'Правила подсчета скидки' do
      f.input :education, :label => 'Образование'
      f.input :faculty, :label => 'Факультет'
      f.input :form, :label => 'Форма обучения'
      f.input :course, :label => 'Курс'
      f.input :bakalavriat, :label => 'Бакалавриат'      
      f.input :summ, :label => 'Полная стоимость обучения (например 40.000)'
      f.input :summ_semestr, :label => 'Стоимость за семестр (например 20.000)'
      f.buttons
    end
  end
 
end
