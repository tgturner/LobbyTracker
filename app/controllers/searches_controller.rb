class SearchesController < ApplicationController

  def new
  end

  def show
    @type = params[:type]
    @meetings = get_soda_type.find(params[:search], @type)
    @count = get_soda_type.max_meetings(params[:search], @type)
    get_contributions
    get_payments
    get_lobbyist_info
  end

  private

  def get_contributions
    if @type == "lobbyist_firm"
      @contribution = SodaRecordsContributions.find(params[:search], @type)
      @contribution_count = SodaRecordsContributions.max_contributer(params[:search], @type)
    elsif @type == "official"
      @contribution = SodaRecordsContributions.find(params[:search], @type)
      @contribution_count = SodaRecordsContributions.max_contributer(params[:search], @type)
      @all_contributions = SodaRecordsContributions.total_contributions(params[:search], @type)
    end
  end

  def get_lobbyist_info
    @lobbyist_info = SodaRecordsLobbyistInfo.find(params[:search]) if @type == "lobbyist"
  end

  def get_payments
    if @type == "lobbyist_firm" || @type == "lobbyist_client"
      @payment = SodaRecordsPayments.find(params[:search], @type)
    end
  end

  def get_soda_type
    "soda_records_#{params[:type]}".classify.constantize
  end

end
