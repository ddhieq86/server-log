class Log < ApplicationRecord
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
