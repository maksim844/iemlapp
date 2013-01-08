require 'rufus/scheduler'
scheduler = Rufus::Scheduler.start_new

 scheduler.every '300s' do
    Faculty.all.each do |f|
      puts "#{f.title}"
    end
    
 end