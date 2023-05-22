class MainController < ApplicationController

  before_action :require_signin

  def index
    @receipts = Receipt.includes(:attraction).order(created_at: :desc).limit(20)
  end

end
