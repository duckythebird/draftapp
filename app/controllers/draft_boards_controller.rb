class DraftBoardsController < ApplicationController
  before_action :set_draft_board, only: [:show, :edit, :update, :destroy]

  # GET /draft_boards
  # GET /draft_boards.json
  def index
    
  end

  # GET /draft_boards/1
  # GET /draft_boards/1.json
  def show
  end

  # GET /draft_boards/new
  def new
    @draft_board = DraftBoard.new
  end

  # GET /draft_boards/1/edit
  def edit
  end

  # POST /draft_boards
  # POST /draft_boards.json
  def create
    @draft_board = DraftBoard.new(draft_board_params)

    respond_to do |format|
      if @draft_board.save
        format.html { redirect_to @draft_board, notice: 'Draft board was successfully created.' }
        format.json { render :show, status: :created, location: @draft_board }
      else
        format.html { render :new }
        format.json { render json: @draft_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /draft_boards/1
  # PATCH/PUT /draft_boards/1.json
  def update
    respond_to do |format|
      if @draft_board.update(draft_board_params)
        format.html { redirect_to @draft_board, notice: 'Draft board was successfully updated.' }
        format.json { render :show, status: :ok, location: @draft_board }
      else
        format.html { render :edit }
        format.json { render json: @draft_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /draft_boards/1
  # DELETE /draft_boards/1.json
  def destroy
    @draft_board.destroy
    respond_to do |format|
      format.html { redirect_to draft_boards_url, notice: 'Draft board was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_draft_board
      @draft_board = DraftBoard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def draft_board_params
      params.fetch(:draft_board, {})
    end
end
