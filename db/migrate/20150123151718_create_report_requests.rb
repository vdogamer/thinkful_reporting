class CreateReportRequests < ActiveRecord::Migration
  def change
    create_table :report_requests do |t|
      t.string :request

      t.timestamps
    end
  end
end
