class AddEmailToReportRequest < ActiveRecord::Migration
  def change
    add_column :report_requests, :email, :string
  end
end
