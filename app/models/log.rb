class Log < ApplicationRecord

	scope :filter_by_ipaddress, -> (ip_address) { where ip_address: ip_address }
 	scope :filter_by_method, -> (request_method) { where request_method: request_method }
 	scope :filter_by_statuscode, -> (status_code) { where status_code: status_code }
 	scope :filter_by_daterange, lambda { where("date_created <= ? AND date_created >= ?", :date_start, :date_end) }


	def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            LogData = Log.new
            LogData.ip_address = row[0]
            LogData.body = row[1]
            LogData.request_method = row[2]
            LogData.status_code = row[3]
            LogData.date_created = row[4]
            LogData.save
        end
    end
end
