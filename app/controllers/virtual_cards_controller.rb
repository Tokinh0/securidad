class VirtualCardsController < ApplicationController
  before_action :set_virtual_card, only: [:show, :edit, :update, :destroy]

  # GET /virtual_cards
  # GET /virtual_cards.json
  def index
    @virtual_cards = VirtualCard.search_by_user(current_user.person.id)
  end

  # GET /virtual_cards/1
  # GET /virtual_cards/1.json
  def show
  end

  # GET /virtual_cards/new
  def new
    @virtual_card = VirtualCard.new
  end

  # GET /virtual_cards/1/edit
  def edit
  end

  # POST /virtual_cards
  # POST /virtual_cards.json
  def create
    @virtual_card = VirtualCard.new(virtual_card_params)
    respond_to do |format|
      if @virtual_card.save
        format.html { redirect_to action: "index", notice: 'Virtual card was successfully created.' }
        format.json { render :index, status: :created }
      else
        format.html { render :new }
        format.json { render json: @virtual_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /virtual_cards/1
  # PATCH/PUT /virtual_cards/1.json
  def update
    respond_to do |format|
      if @virtual_card.update(virtual_card_params)
        format.html { redirect_to action: "index", notice: 'Virtual card was successfully updated.' }
        format.json { render :index, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @virtual_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /virtual_cards/1
  # DELETE /virtual_cards/1.json
  def destroy
    @virtual_card.destroy
    respond_to do |format|
      format.html { redirect_to virtual_cards_url, notice: 'Virtual card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_virtual_card
      @virtual_card = VirtualCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def virtual_card_params
      params.require(:virtual_card).permit(:number, :cvc, :expiration_date, :spent_limit, :usage_limit, :card_id)
    end
end
