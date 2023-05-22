class ReceiptsController < ApplicationController

  before_action :require_signin

  layout 'cheque', only: [:cheque]

  def index
    @receipts = Receipt.includes(:attraction)
      .where(created_at: Date.today.beginning_of_day..Date.today.end_of_day)
      .order(created_at: :desc)
  end

  def show
    @receipt = Receipt.find(params[:id])
  end

  def new
    @receipt = Receipt.new
  end

  def create
    @receipt = Receipt.new(receipt_params)
    @receipt.user_id = 1

    if @receipt.cycle == 2 && @receipt.attraction.name == 'Машина'
      @receipt.total_price = @receipt.quantity * 800
    end

    if @receipt.cycle == 2 && @receipt.attraction.name == 'Батут'
      @receipt.total_price = @receipt.quantity * 450
    end

    if @receipt.cycle == 1
      @receipt.total_price = @receipt.quantity * @receipt.attraction.price
    end

    @receipt.save

    redirect_to(root_url, notice: "Успешно. Сдача клиенту: #{@receipt.change}")
  end

  def cheque
    @receipt = Receipt.find(params[:id])

    if @receipt.cycle == 2 && @receipt.attraction.name == 'Машина'
      @cheque_qty = 2
    end

    if @receipt.cycle == 2 && @receipt.attraction.name == 'Батут'
      @cheque_qty = 3
    end

    if @receipt.cycle == 1
      @cheque_qty = 1
    end
  end

  private

  def receipt_params
    params.require(:receipt).permit(
      :client_phone,
      :attraction_id,
      :quantity,
      :cash_pay,
      :card_pay,
      :cycle
    )
  end

end
