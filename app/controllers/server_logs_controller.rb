class ServerLogsController < ApplicationController
  def index
    @logs = Product.where(nil)
    filtering_params(params).each do |key, value|
      @logs = @logs.public_send("filter_by_#{key}", value) if value.present?
    end
  end

  def new
      @logs = Log.new
  end

  def create
     Log.import(params[:log][:file]
     flash[:notice] = "Server Log uploaded successfully"
     redirect_to logs_path #=> or where you want
  end

  private

  # A list of the param names that can be used for filtering the Product list
  def filtering_params(params)
    params.slice(:ipaddress, :method, :statuscode, :daterange)
  end
end

