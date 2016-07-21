class UpVotesController < ApplicationController
  before_action :set_up_vote, only: [:show, :edit, :update, :destroy]

  # GET /up_votes
  # GET /up_votes.json
  def index
    @up_votes = UpVote.all
  end

  # GET /up_votes/1
  # GET /up_votes/1.json
  def show
  end

  # GET /up_votes/new
  def new
    @up_vote = UpVote.new
  end

  # GET /up_votes/1/edit
  def edit
  end

  # POST /up_votes
  # POST /up_votes.json
  def create
    @up_vote = UpVote.new(up_vote_params)

    respond_to do |format|
      if @up_vote.save
        format.html { redirect_to @up_vote, notice: 'Up vote was successfully created.' }
        format.json { render :show, status: :created, location: @up_vote }
      else
        format.html { render :new }
        format.json { render json: @up_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /up_votes/1
  # PATCH/PUT /up_votes/1.json
  def update
    respond_to do |format|
      if @up_vote.update(up_vote_params)
        format.html { redirect_to @up_vote, notice: 'Up vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @up_vote }
      else
        format.html { render :edit }
        format.json { render json: @up_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /up_votes/1
  # DELETE /up_votes/1.json
  def destroy
    @up_vote.destroy
    respond_to do |format|
      format.html { redirect_to up_votes_url, notice: 'Up vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_up_vote
      @up_vote = UpVote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def up_vote_params
      params.require(:up_vote).permit(:picture_id, :user_id)
    end
end
