class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.string :ip_address
      t.text :body
      t.string :request_method
      t.string :status_code
      t.datetime :date_created

      t.timestamps
    end
  end
end
