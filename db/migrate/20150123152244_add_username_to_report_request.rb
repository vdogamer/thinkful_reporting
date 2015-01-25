class AddUsernameToReportRequest < ActiveRecord::Migration
  def change
    add_column :report_requests, :username, :string
  end
end
