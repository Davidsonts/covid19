class HomeController < ApplicationController
  before_action :set_global_summary_service
  def index
    @summary = @summary_service.general
  end

  def confirmed
    @confirmeds = @summary_service.confirmed
  end

  def recovered
    @recovereds = @summary_service.recovered
  end

  def deaths
    @deaths = @summary_service.deaths
  end

  def set_global_summary_service
    @summary_service = GlobalSummary.new
  end
end
