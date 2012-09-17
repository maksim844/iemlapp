# encoding: utf-8

ActiveAdmin.register Rule do
  menu  :label => "Правила подсчета скидки"
  index do
      column :id
      column "Факультет", :faculty
      column "Форма обучения", :form
      column "Курс", :course
      column "Бакалавриат", :bakalavriat
      column "Полная стоимость обучения",  :summ
      default_actions
  end
  form :html => { :multiple => true  } do |f|
    f.inputs 'Объекты' do
      f.input :faculty, :label => 'Факультет'
      f.input :form, :label => 'Форма обучения'
      f.input :course, :label => 'Курс'
      f.input :bakalavriat, :label => 'Бакалавриат'      
      f.input :summ, :label => 'Полная стоимость обучения'
      f.input :summ_semestr, :label => 'Стоимость за семестр'
      f.buttons
    end
  end
 
end
