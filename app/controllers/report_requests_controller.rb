class ReportRequestsController < ApplicationController
  before_action :set_report_request, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @report_requests = ReportRequest.all
    respond_with(@report_requests)
  end

  def show
    respond_with(@report_request)
  end

  def new
    @report_request = ReportRequest.new
    respond_with(@report_request)
  end

  def edit
  end

  def create
    @report_request = ReportRequest.new(report_request_params)
    @report_request.save
    respond_with(@report_request)
  end

  def update
    @report_request.update(report_request_params)
    respond_with(@report_request)
  end

  def destroy
    @report_request.destroy
    respond_with(@report_request)
  end

  private
    def set_report_request
      @report_request = ReportRequest.find(params[:id])
    end

    def report_request_params
      params.require(:report_request).permit(:username, :email, :request)
    end
end
