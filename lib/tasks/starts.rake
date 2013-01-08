namespace :cron do
  desc "starts"
  
  # Если юзер зареге-лся но не зашел в систему
  task :starts => :environment do
    puts "Welcom!!!"
  end
end