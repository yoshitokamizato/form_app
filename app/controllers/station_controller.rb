class StationController < ApplicationController
  def index
    station1 = Station1.all
    @sta1 = station1.sample
  end
  def create
   @stations = params[:station]
   @stations.delete_if(&:nil?).delete_if(&:blank?)

   @stations.each do |s|
    s1 = Station1.new
    s1.station = s
    s1.save
   end
  end
  def destroy
    station = Station1.find(params[:id])
    station.destroy
    redirect_to :action => "index"
  end
end
