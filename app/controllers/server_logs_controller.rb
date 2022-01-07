class ServerLogsController < ApplicationController
  def index
    @logs = Log.all
  end

  def new
      @logs = Log.new
   end

   def create
     Log.import(params[:log][:file]
     flash[:notice] = "Server Log uploaded successfully"
     redirect_to logs_path #=> or where you want
   end
end
