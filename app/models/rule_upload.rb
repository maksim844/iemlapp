class RuleUpload < ActiveRecord::Base
  attr_accessible :filial, :education, :faculty, :class_id, :form, :special, :course_id, :bakalavriat, :year_id,  :summ_semestr, :xls,
   :xls_file_name, :filial_id, :normativ_summ, :finance_summ
  
  has_attached_file :xls,
      :url =>"/system/xls/:basename.:extension",
      :path => ":rails_root/public/system/xls/:basename.:extension"  
  belongs_to :filial
  before_save :basename
  after_post_process :xls_read
  
  validates :filial_id, :presence => true
  private
    def basename
      if self.xls.dirty?
        new_filename = Time.now.to_i.to_s
        extension = File.extname(xls_file_name).downcase
        self.xls.instance_write :file_name, "#{new_filename}#{extension}"
        self.xls_file_name = "#{new_filename}#{extension}"
      end
    end    
    def xls_read
      book = Spreadsheet.open self.xls.queued_for_write[:original].path
      sheet1 = book.worksheet 0
      sheet1.each do |row|
        if row[9].to_s != ""
          RuleUpload.create!(
            :filial_id => self.filial_id,
            :education => row[1], 
            :faculty=> row[2], 
            :class_id =>  row[3].to_i, 
            :form =>  row[4], 
            :special =>  row[5], 
            :course_id =>  row[6].to_i, 
            :bakalavriat =>  row[7],
            :year_id =>  row[8].to_i,
            :summ_semestr =>  row[9].to_i,
            :normativ_summ => (row[10].to_i unless row[10].to_s.nil?),
            :finance_summ => (row[11].to_i unless row[11].to_s.nil?)
            )
        end
      end
    end
end