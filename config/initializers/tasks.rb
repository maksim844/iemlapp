require 'rufus/scheduler'
require 'net/http'

scheduler = Rufus::Scheduler.start_new
url = URI.parse(URI.encode("http://ieml.herokuapp.com".strip))

 scheduler.every '60s' do
     puts Net::HTTP.get(URI(url))   
 end